module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: nil })
    size = options[:size]
    extra = nil
    if size then extra = "?s=#{size}" end
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}#{extra}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end