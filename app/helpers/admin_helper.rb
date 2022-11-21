# frozen_string_literal: true

module AdminHelper
  def get_user_role_name_by_id(id)
    UserRole.find(id).role_name
  end
end
