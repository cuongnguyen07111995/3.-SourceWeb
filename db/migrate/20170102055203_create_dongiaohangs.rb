class CreateDongiaohangs < ActiveRecord::Migration[5.0]
  def change
    create_table :dongiaohangs do |t|
      t.decimal :tongtien
      t.decimal :phivanchuyen, :default => 0
      t.decimal :phikhac, :default => 0
      t.datetime :ngaygiao
      t.datetime :ngaythanhtoan

      t.string :hoten
      t.string :diachi
      t.string :sdt

      t.references :dondathang, foreign_key:true

      t.timestamps
    end
  end
end
