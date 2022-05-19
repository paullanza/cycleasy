class ChangeDescriptionToBeTextInBikes < ActiveRecord::Migration[6.1]
  def change
    change_column :bikes, :description, :text
  end
end
