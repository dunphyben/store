class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :admin_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
