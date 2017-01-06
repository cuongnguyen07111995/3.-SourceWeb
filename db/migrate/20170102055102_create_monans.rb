class CreateMonans < ActiveRecord::Migration[5.0]
  def change
    create_table :monans do |t|
      t.string :ten
      t.decimal :gia
      t.text :mieuta
      t.string :anh
      t.integer :luotthich, :default => 0
      t.integer :luotxem, :default => 0
      
      t.references :thanhvien, foreign_key:true

      t.timestamps
    end
  end
end
