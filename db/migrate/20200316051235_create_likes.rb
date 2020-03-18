class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :request_id, null: false

      t.timestamps

      t.index :user_id
      t.index :request_id
      t.index [:user_id, :request_id], unique: true
    end
  end
end
