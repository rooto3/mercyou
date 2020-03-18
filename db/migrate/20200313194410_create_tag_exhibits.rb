class CreateTagExhibits < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_exhibits do |t|
      t.references :tag, foreign_key: true
      t.references :exhibit, foreign_key: true
      t.timestamps
    end
  end
end
