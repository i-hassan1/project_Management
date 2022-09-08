class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :password, format: { with: /\A(?=.*\d)(?=.*[A-Z])(?=.*\W)[^ ]{8,}\z/, presence: true, 
    message: 'Password should have more than 8 characters including 1 uppercase letter, 1 number, 1 special character'}
  enum role: { manager: 0, developer: 1, qa: 2 }
end
