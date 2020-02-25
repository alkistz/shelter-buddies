class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :description])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:description])
  end

  def devise_parameter_sanitizer
    if resource_class == Shelter
      Shelter::ParameterSanitizer.new(Shelter, :shelter, params)
    else
      super # Use the default one
    end
  end
end
