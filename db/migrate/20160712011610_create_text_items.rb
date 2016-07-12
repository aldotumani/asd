class CreateTextItems < ActiveRecord::Migration
  def change
    create_table :text_items do |t|
      t.text :nosotros
      t.text :quehacemos
      t.text :elegirnos
      t.text :contacto

      t.timestamps null: false
    end
  end
end
