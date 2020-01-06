module ApplicationHelper
  def gravatar_for(user)
    gravator_id = Digest::MD5::hexdigest(user.email.downcase)
    gravator_url = "https://secure.gravator.com/#{gravator_id}"
    image_tag(gravator_url, alt: user.username, class: 'img-circle')
  end
end
