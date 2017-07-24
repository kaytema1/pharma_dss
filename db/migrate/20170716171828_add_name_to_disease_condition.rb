class AddNameToDiseaseCondition < ActiveRecord::Migration
  def change
    add_column :disease_conditions, :name, :string
    
  end
end
