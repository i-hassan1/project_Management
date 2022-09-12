class User < ApplicationRecord
  after_initialize :set_default_role, if: :new_record?

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
 # validates :password, presence: true
  enum role: { manager: 0, developer: 1, admin: 2 }
  has_one_attached :avatar

  private
   def set_default_role
    self.role ||= :admin
   end 
end
