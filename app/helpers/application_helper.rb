module ApplicationHelper
  def nav_link name, url

    if(url == url_for({controller: controller_name, only_path: true}))
      active = "active"
    else
      active = ""
    end

    "<li class='#{active}'>#{link_to name, url}</li>".html_safe

  end

  def nav_link_if_else name, url, elseName, elseUrl, condition
    puts session
    condition ? nav_link(name, url) : nav_link(elseName, elseUrl)
  end

  def field_if name, condition, options
    "<span class='#{options[:class]}' id='#{name}'>#{name}</span>".html_safe if condition
  end

  def add_ingredient_button name, f, association
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end

  def remove_ingredient_button name, f
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
end
