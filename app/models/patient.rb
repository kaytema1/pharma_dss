class Patient < ActiveRecord::Base
  belongs_to :patient_visit
end
