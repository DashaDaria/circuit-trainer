class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :content
      t.integer :exercise_id
      t.integer :user_id
    end
  end
end
