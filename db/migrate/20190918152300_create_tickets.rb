class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :case_number
      t.string :date
      t.string :time
      t.string :type
      t.string :description
      t.string :location
      t.string :vehicle_license_plate
      t.belongs_to :officer, foreign_key: true
      t.belongs_to :civilian, foreign_key: true

      t.timestamps
    end
  end
end
