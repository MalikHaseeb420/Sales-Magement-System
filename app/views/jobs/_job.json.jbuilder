# frozen_string_literal: true

json.extract! job, :id, :title, :description, :user_id, :tech_stack_id, :created_at, :updated_at
json.url job_url(job, format: :json)
