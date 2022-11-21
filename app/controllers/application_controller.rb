# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def do_something
    puts '1232'
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[name gender email password
                                               profile_image user_role_id company_id])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[name gender email
                                               profile_image user_role_id])
    devise_parameter_sanitizer.permit(:invite, keys: %i[name user_role_id gender profile_image])
  end
end
