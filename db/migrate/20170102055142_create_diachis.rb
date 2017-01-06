class CreateDiachis < ActiveRecord::Migration[5.0]
  def change
    create_table :diachis do |t|
      t.string :sonha
      t.string :duong
      t.string :phuong
      t.string :quan
      t.string :thanhpho
      
      t.references :thanhvien, foreign_key: true

      t.timestamps
    end
  end
end
