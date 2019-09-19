class AuthController < ApplicationController

    def login 
        # Find an officer
        officer = Officer.find_by(badge: params[:badge])
        # if officer exists, see if they are the really the officer via password
        is_authenticated = officer.authenticate(params[:password])
        # if all is well, send back the officer info (in Token )
        
        if is_authenticated
            payload = { officer_id: officer.id }
            token = JWT.encode(payload, 'web062419', 'HS256')
            render json: {token: token}
        else 
            render json: {errors: ["There was an error with your Badge/Password credentials "]}, status: 422
        end

    end  

end
