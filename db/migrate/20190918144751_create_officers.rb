class CreateOfficers < ActiveRecord::Migration[5.2]
  def change
    create_table :officers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :badge
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :cell
      t.string :phone
      t.string :password_digest
      
      t.timestamps
    end
  end
end
