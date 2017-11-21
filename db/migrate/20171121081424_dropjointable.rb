class Dropjointable < ActiveRecord::Migration[5.1]
  def change
    drop_table :circuits_exercises
  end
end
