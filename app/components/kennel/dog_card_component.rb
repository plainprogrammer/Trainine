# frozen_string_literal: true

class Kennel::DogCardComponent < ViewComponent::Base
  def initialize(dog)
    @name = dog.name
    @breed = dog.breed
    @registered_name = dog.registered_name
    @notes = dog.notes
  end
end
