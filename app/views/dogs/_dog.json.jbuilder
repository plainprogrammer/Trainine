json.extract! dog, :id, :name, :registered_name, :breed, :dob, :notes, :created_at, :updated_at
json.url dog_url(dog, format: :json)
