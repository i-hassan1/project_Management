class Project < ApplicationRecord
    belongs_to :manager, class_name: 'User'
    belongs_to :client
    has_many :comments, dependent: :destroy
    has_many :payments


end
