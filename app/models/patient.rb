class Patient < ActiveRecord::Base
  belongs_to :patient_visit
  
  validates :first_name, length: { minimum: 3 }, presence: true
  validates :last_name, length: { minimum: 2 }, presence: true
  validates :folder_number, :gender, presence: true

end
