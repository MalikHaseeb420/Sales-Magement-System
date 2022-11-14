class UserRolesController < ApplicationController
  def create
    @role = UserRole.new(roles_params)
    if @role.save
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    @user_role = UserRole.find(params[:id])
    if @user_role.delete
      redirect_to user_roles_list_admin_index_path
    end
  end
  private

  def roles_params
    params.require(:user_role).permit(:role_name)
  end
end
