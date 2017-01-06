class CreateChitiets < ActiveRecord::Migration[5.0]
  def change
    create_table :chitiets do |t|
      t.string :tenmonan
      t.integer :soluong
      t.decimal :dongia
      t.decimal :tongtien

      t.references :dongiaohang, foreign_key:true

      t.timestamps
    end
  end
end
