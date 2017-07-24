class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :response
      t.text :comment

      t.timestamps
    end
  end
end
