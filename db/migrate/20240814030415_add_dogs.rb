class AddDogs < ActiveRecord::Migration[7.2]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :registered_name, null: true
      t.string :breed, null: false
      t.date :date_of_birth, null: false
    end
  end
end
