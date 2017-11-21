class Newjointable < ActiveRecord::Migration[5.1]
  def change
    create_table :circuit_exercises do |t|
      t.integer :circuit_id
      t.integer :exercise_id
    end
  end
end
