class AddTrainingWithToDogs < ActiveRecord::Migration[7.2]
  def change
    add_reference :dogs, :training_with, null: true, foreign_key: { to_table: :trainers }
  end
end
