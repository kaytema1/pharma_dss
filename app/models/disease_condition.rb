class DiseaseCondition < ActiveRecord::Base
 has_and_belongs_to_many :patient_visits
end
