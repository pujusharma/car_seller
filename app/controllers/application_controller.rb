class ApplicationController < ActionController::Base
    before_action :authenticate_user!
   

    def create
  
      @user = User.new(user_params)
      session[:user_id] = user.id
      redirect_to root_path

    end
    
  
    


    def configure_permitted_parameters
      # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone , :username , :address])
      devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :contat , :avtar  ])
    end

    def after_sign_in_path_for(resource)
      root_path
    end
  
    def after_sign_out_path_for(resource)
      new_user_session_path
    end

      private
    
    def user_params
      params.require(:user).permit(:name, :image)
    end
    
end
