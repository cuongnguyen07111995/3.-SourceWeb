class CreateBosuutaps < ActiveRecord::Migration[5.0]
  def change
    create_table :bosuutaps do |t|
      t.string :ten
      t.string :mieuta
      
      t.references :thanhvien, foreign_key:true

      t.timestamps
    end
  end
end
