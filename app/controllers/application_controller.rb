class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  layout :layout_by_authentication

  def layout_by_authentication
    'authentication' if devise_controller?
  end
end
