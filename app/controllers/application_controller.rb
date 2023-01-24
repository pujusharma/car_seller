class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def create
      user = User.create!(user_params)
      session[:user_id] = user.id
      redirect_to root_path
    end

    def after_sign_in_path_for(resource)
        root_path
      end
  
      def after_sign_out_path_for(resource)
        new_user_session_path
      end
end
