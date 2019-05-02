class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_member!, only: [:edit, :update, :destroy, :new, :create]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :group_attributes => [:group_id, :name]])
    end
end
