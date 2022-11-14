class AdminController < ApplicationController
  layout 'admin_dashboard'
  def index
  end

  def users_list
    @users = User.all
  end

  def user_roles_list
    @user_roles = UserRole.all
  end
end
