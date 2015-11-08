module PostsHelper
  def user_is_authorized_for_post?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end

  def user_post_history(post)
    if current_user.posts?
      redirect_to @user/posts
    else
      "#{user.name} has no posts."
    end
  end
end
