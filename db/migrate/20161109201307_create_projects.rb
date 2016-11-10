class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :nombre
      t.attachment :image
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
