class CreateDogs < ActiveRecord::Migration[7.2]
  def change
    create_table :dogs do |t|
      t.string :registered_name, null: false
      t.string :name, null: false
      t.string :breed
      t.text :notes

      t.timestamps
    end
  end
end
