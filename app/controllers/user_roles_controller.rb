# frozen_string_literal: true

class UserRolesController < ApplicationController
  def create
    @role = UserRole.new(roles_params)
    return unless @role.save

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @user_role = UserRole.find(params[:id])
    return unless @user_role.delete

    redirect_to user_roles_list_admin_index_path
  end

  private

  def roles_params
    params.require(:user_role).permit(:role_name)
  end
end
