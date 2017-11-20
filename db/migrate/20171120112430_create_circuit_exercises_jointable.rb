class CreateCircuitExercisesJointable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :circuits, :exercises do |t|
      t.index :circuit_id
      t.index :exercise_id
    end
  end
end
