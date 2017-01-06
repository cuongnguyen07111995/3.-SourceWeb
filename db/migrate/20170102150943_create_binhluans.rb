class CreateBinhluans < ActiveRecord::Migration[5.0]
  def change
    create_table :binhluans do |t|
      t.text :noidung
      t.integer :danhgia
      t.integer :luotthich

      t.references :monan, foreign_key:true

      t.timestamps
    end
  end
end
