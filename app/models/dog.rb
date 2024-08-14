class Dog < ApplicationRecord
  validates :name, presence: true
  validates :breed, presence: true
  validates :date_of_birth, presence: true
end
