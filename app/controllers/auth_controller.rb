class AuthController < ApplicationController
    def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
        payload = {user_id: @user.id}
        token = encode(payload)
        render json: {
            message: "Authenticated! You are logged in",
            authenticated: true,
            user: @user.login_serializer,
            token: token
        }, status: :accepted
        else
            render json: {message: 'WEE WOO WE GOT A HACKER ON OUR HANDS DONT WE'}
        end
    end
end
