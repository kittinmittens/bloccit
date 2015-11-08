module UsersHelper
  def user_comment_history(comment)
    if current_user.comment?
      redirect_to @user/comments
    else
      "#{user.name} has no comments."
    end
  end
end
