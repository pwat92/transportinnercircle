class CreateDriverApplications < ActiveRecord::Migration
  def change
    create_table :driver_applications do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :linkedin
      t.string :cv

      t.timestamps null: false
    end
  end
end
