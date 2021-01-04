class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :property_name
      t.integer :rent
      t.text :address
      t.real :age
      t.text :remark

      t.timestamps
    end
    add_index :properties, :property_name, unique: true
  end
end
