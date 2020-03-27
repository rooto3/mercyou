class AddCategoryToExhibits < ActiveRecord::Migration[5.0]
  def change
    add_reference :exhibits, :category, foreign_key: true
  end
end
