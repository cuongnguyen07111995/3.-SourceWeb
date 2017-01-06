class CreateThanhviens < ActiveRecord::Migration[5.0]
  def change
    create_table :thanhviens do |t|
      t.string :hoten
      t.string :password_digest
      t.string :gioitinh
      t.date :ngaysinh
      t.string :sdt
      t.string :email
      t.integer :role, :default => 2

      t.integer :luotxem, :default => 0

      t.timestamps
    end
  end
end
