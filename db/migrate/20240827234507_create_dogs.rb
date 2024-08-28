class CreateDogs < ActiveRecord::Migration[7.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :registered_name
      t.string :breed
      t.date :dob
      t.text :notes

      t.timestamps
    end
  end
end
