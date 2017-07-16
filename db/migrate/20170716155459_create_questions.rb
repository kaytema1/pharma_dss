class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :text
      t.references :patient_visit, index: true

      t.timestamps
    end
  end
end
