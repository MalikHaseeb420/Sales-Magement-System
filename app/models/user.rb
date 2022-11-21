# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable
  enum gender: { male: 0, female: 1, other: 2 }
  has_one_attached :profile_image
  belongs_to :user_role
  belongs_to :company

  def is_admin?
    @user_role = UserRole.find(user_role_id)
    return true if @user_role.role_name.casecmp('admin').zero?

    false
  end

  def is_bd?
    @user_role = UserRole.find(user_role_id)
    return true if @user_role.role_name.casecmp('bussiness developer').zero?

    false
  end
end
