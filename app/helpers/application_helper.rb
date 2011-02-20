module ApplicationHelper
  def getUsernameLinkById(id)
    @user = User.find_by_id(id)
    link_to @user.username, @user
  end
end
