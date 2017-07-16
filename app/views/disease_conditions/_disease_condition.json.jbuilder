json.extract! disease_condition, :id, :icd_10, :patient_visit_id, :created_at, :updated_at
json.url disease_condition_url(disease_condition, format: :json)
