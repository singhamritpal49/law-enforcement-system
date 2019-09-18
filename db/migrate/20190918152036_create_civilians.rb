class CreateCivilians < ActiveRecord::Migration[5.2]
  def change
    create_table :civilians do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :sex
      t.string :date_of_birth
      t.string :height
      t.string :eyes
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.string :email
      t.string :cell
      t.string :phone
      t.string :social_security_number
      t.string :driver_license
      t.string :driver_license_issue_state
      t.string :driver_license_issue_date
      t.string :driver_license_expiration_date

      t.timestamps
    end
  end
end
