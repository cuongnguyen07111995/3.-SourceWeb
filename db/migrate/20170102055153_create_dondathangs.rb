class CreateDondathangs < ActiveRecord::Migration[5.0]
  def change
    create_table :dondathangs do |t|
      t.decimal :tongtien
      t.boolean :dathanhtoan, :default => false
      t.string :hinhthuc_thanhtoan
      t.boolean :dagiaohang, :default => false

      t.string :hoten
      t.string :diachi
      t.string :sdt

      t.references :thanhvien, foreign_key: true
      t.references :diachi, foreign_key: true

      t.timestamps
    end
  end
end
