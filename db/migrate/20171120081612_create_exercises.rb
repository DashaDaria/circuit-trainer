class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :instruction
      t.string :target
      t.integer :circuit_id
    end
  end
end
