module CurrentUserConcern
extend ActiveSupport::Concern
    def current_user
        super || guest_user
    end
    
    def guest_user
        guest= GuestUser.new
        guest.name="ammad Ibraheem"
        guest.first_name="ammad"
        guest.last_name="Ibraheem"
        guest.email="Dawood123@gmail.com"
        guest
    end

end