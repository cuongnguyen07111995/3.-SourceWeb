class CreateGiohangs < ActiveRecord::Migration[5.0]
  def change
    create_table :giohangs do |t|
      t.decimal :tongtien
      t.decimal :phivanchuyen, :default => 0
      t.decimal :phikhac, :default => 0

      t.references :thanhvien, foreign_key:true

      t.timestamps
    end
  end
end
