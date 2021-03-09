class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:role])
    end

    def after_sign_in_path_for(resource)
      if current_user.role == 'guide'
        guides_path()
      else
        root_path()
      end
    end
end
