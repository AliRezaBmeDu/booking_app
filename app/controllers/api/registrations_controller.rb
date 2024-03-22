class Api::RegistrationsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        user = User.create(user_params)

        if user.save
            render json: { message: 'User Created Successfully' }, status: :created
        else
            render json: { message: user.error.full_messages }, status: :unprocessable_entity
        end

    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :photo, :age)
    end
end
