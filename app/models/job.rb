# frozen_string_literal: true

class Job < ApplicationRecord
  belongs_to :user
  has_one_attached :poster
  belongs_to :tech_stack
end
