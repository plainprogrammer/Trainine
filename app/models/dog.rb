class Dog < ApplicationRecord
  validates :name, presence: true
  validates :registered_name, presence: true
end
