class Dog < ApplicationRecord
  belongs_to :training_with, class_name: "Trainer", optional: true

  validates :name, presence: true
  validates :breed, presence: true
end
