module CurrentUserConcern
extend ActiveSupport::Concern
    def current_user
        super || guest_user
    end
    
    def guest_user
        OpenStruct.new(name:"ahmad raza",first_name:"ahmd",last_name:"raza",email:"asdf@asdf.com")
    end

end