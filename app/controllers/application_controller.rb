class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def verify_admin_role
    return if current_user&.is_admin?

    redirect_to root_path, alert: 'You are not authorized to perform this action.'
  end
end
