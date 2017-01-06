class CreateChitietgiohangs < ActiveRecord::Migration[5.0]
  def change
    create_table :chitietgiohangs do |t|
      t.integer :soluong

      t.references :giohang, foreign_key:true
      t.references :monan, foreign_key:true
      
      t.timestamps
    end
  end
end
