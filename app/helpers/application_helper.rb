module ApplicationHelper
  def getUsernameLinkById(id)
    @user = User.find_by_id(id)
    link_to @user.username, @user
  end
  
  def current_user_is?(id)
    if user_signed_in?
      current_user.id == id
    end
  end
end
