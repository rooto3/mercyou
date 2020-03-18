class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.text :image
      t.string :name
      t.string :desc
      t.string :category
      t.string :state
      t.string :from
      t.integer :days
      t.integer :price
      t.timestamps
    end
  end
end
