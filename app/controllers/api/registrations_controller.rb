class Api::RegistrationsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        if email_already_exists(user_params[:email])
            render json: { message: 'Email already exists' }, status: unprocessable_entity
            
        else
            user = User.create(user_params)

            if user.save
                render json: { message: 'User Created Successfully' }, status: :created
            else
                render json: { message: user.error.full_messages }, status: :unprocessable_entity
            end
        end

    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :photo, :age)
    end
end
