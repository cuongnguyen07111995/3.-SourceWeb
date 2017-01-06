class CreateChitietbosuutaps < ActiveRecord::Migration[5.0]
  def change
    create_table :chitietbosuutaps do |t|

      t.references :bosuutap, foreign_key:true
      t.references :monan, foreign_key:true

      t.timestamps
    end
  end
end
