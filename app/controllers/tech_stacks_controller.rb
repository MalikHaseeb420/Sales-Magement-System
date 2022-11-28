# frozen_string_literal: true

class TechStacksController < ApplicationController
  def create
    @stack = TechStack.new(tech_stacks_params)
    return unless @stack.save

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @stack = TechStack.find(params[:id])
    return unless @stack.delete

    redirect_to tech_stacks_admin_index_path
  end

  private

  def tech_stacks_params
    params.require(:tech_stack).permit(:stack_name)
  end
end
