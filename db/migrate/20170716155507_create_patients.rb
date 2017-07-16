class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :folder_number
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :gender
      t.string :address
      t.references :patient_visit, index: true

      t.timestamps
    end
  end
end
