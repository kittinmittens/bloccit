module ApplicationHelper
  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form group has error'
    else
      content_tag :div, capture(&block), class: 'form group'
    end
  end

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    url = "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
    image_tag(url)
        #end product: <img src="http://gravatar.com/avatar/2da4640bc6d8e98023cb56e661752b2c.png?s=48" alt="2da4640bc6d8e98023cb56e661752b2c">
  end
end
