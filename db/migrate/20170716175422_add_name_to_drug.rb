class AddNameToDrug < ActiveRecord::Migration
  def change
    add_column :drugs, :name, :string
  end
end
