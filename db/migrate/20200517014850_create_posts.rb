class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.date :date
      t.integer :race
      t.string :horse
      t.string :comment1
      t.string :comment2
      t.string :comment3
      t.integer :user_id

      t.timestamps
    end
  end
end
