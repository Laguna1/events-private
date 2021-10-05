class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :visitings, dependent: :destroy
  has_many :visitors, through: :visitings, source: :user
end
