class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.integer :thanhvien_id
      t.integer :monan_id
      t.integer :thanhvien_2_id
      t.string :hanhdong
    
      t.timestamps
    end
  end
end
