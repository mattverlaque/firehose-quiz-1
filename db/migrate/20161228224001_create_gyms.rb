class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :website
      t.timestamps
    end

    add_index :gyms, :id
  end
end
