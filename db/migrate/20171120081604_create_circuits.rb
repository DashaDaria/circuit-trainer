class CreateCircuits < ActiveRecord::Migration[5.1]
  def change
    create_table :circuits do |t|
      t.string :name
      t.integer :duration
      t.string :difficulty
      t.integer :user_id
    end
  end
end
