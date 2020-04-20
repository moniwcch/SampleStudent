module ApplicationHelper
    def gravitor_for(user,options={size:80})
        email_address=user.email.downcase
        hash = Digest::MD5.hexdigest(email_address)
        size=options[:size]
        gravitor_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
        image_tag(gravitor_url,alt:user.username)
end 
end
