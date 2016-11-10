class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.attachment :image
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
