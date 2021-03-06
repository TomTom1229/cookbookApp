module RecipesHelper
  def add_ingredient_button name, f, association
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", class: "btn")
  end

  def remove_ingredient_button name, f
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)", class: "btn")
  end
end
