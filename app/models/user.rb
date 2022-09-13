class User < ApplicationRecord
  after_initialize :set_default_role, if: :new_record?

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
 # validates :password, presence: true
  enum role: { manager: 0, developer: 1, admin: 2 }
  has_one_attached :avatar

  has_many :comments, dependent: :destroy
  has_many :projects, class_name: 'Project', foreign_key: 'manager_id'  

  private
  def set_default_role
    self.role ||= :admin
  end 
end
