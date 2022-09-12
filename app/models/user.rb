class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
 # validates :password, presence: true
  enum role: { manager: 0, developer: 1, qa: 2 }
  has_one_attached :avatar
end
