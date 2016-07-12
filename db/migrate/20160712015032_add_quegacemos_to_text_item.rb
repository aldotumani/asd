class AddQuegacemosToTextItem < ActiveRecord::Migration
  def change
    add_column :text_items, :quehacemos2, :text
  end
end
