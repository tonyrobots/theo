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
  
  def thumbnail(user_id)
    @user = User.find_by_id(user_id)
    image_tag @user.avatar.url(:thumb)
  end
  
end
