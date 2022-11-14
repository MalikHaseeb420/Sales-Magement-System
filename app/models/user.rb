class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable, :lockable
  enum gender:{male:0,female:1,other:2}
  has_one_attached :profile_image
  belongs_to :user_role
  def is_admin?
    @user_role = UserRole.find(self.user_role_id )
    return true if @user_role.role_name.downcase =='admin'
    return false
  end
  def is_bd?
    @user_role = UserRole.find(self.user_role_id )
    return true if @user_role.role_name.downcase =='bussiness developer'
    return false
  end
end
