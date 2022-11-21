# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :redirect_user_dashaboard
  def index; end

  def about; end

  def contact_us; end

  private

  def redirect_user_dashaboard
    return unless current_user
    return unless current_user.is_admin?

    render template: 'admin/index', layout: 'admin_dashboard', formats: [:html]
  end
end
