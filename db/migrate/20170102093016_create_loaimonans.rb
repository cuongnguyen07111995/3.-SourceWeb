class CreateLoaimonans < ActiveRecord::Migration[5.0]
  def change
    create_table :loaimonans do |t|
      
      t.references :loai, foreign_key:true
      t.references :monan, foreign_key:true

      t.timestamps
    end
  end
end
