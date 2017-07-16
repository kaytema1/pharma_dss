class Question < ActiveRecord::Base
  belongs_to :patient_visit
  has_many :choices
end
