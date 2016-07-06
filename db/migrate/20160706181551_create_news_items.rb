class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :titulo
      t.string :link
      t.text :texto
      t.attachment :image

      t.timestamps null: false
    end
  end
end
