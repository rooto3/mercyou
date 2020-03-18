class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :item
      t.string :tag
      t.text :remark
      t.timestamps
    end
  end
end
