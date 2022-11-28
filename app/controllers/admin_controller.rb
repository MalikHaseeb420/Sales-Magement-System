# frozen_string_literal: true

class AdminController < ApplicationController
  layout 'admin_dashboard'
  def index; end

  def users_list
    @users = User.all
  end

  def user_roles_list
    @user_roles = UserRole.all
  end

  def companies
    @companies = Company.all
  end

  def tech_stacks
    @tech_stacks = TechStack.all
  end

  def jobs_list
    @jobs  = Job.all
  end
end
