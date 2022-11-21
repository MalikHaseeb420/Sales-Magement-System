# frozen_string_literal: true

class CompaniesController < ApplicationController
  def create
    @company = Company.new(company_params)
    return unless @company.save

    respond_to do |format|
      format.js
    end
  end

  def destroy; end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end
