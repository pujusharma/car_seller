class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def create
      redirect_to root_path
    end

    def after_sign_in_path_for(resource)
        root_path
      end
  
      def after_sign_out_path_for(resource)
        new_user_session_path
      end
end
