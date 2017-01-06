class CreateLoais < ActiveRecord::Migration[5.0]
  def change
    create_table :loais do |t|
      t.string :ten
      t.string :role
      
      t.timestamps
    end
  end
end
