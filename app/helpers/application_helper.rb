module ApplicationHelper

    # Returns the Gravatar URL for the given user.
    def gravatar_url_for(user)
        if user.avatar.attached?
            return user.avatar
        end
        image_path("download.png")
    end

end
