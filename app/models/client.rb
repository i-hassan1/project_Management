class Client < ApplicationRecord
  has_one :project
  has_many :payments
end
