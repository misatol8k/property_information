class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.integer :rent
      t.string :address
      t.float :age
      t.text :remark

      t.timestamps
    end
    add_index :properties, :property_name, unique: true
  end
end
