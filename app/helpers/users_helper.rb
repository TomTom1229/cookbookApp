module UsersHelper
  def user_edit_button user
    if user.id == session[:user_id] or session[:admin] 
      link_to 'Edit', edit_user_path(user), :class => "btn btn-mini"
    end
  end
end
