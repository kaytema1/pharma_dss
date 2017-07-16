class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :option
      t.references :question, index: true

      t.timestamps
    end
  end
end
