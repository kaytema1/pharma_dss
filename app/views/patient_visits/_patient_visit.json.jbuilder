json.extract! patient_visit, :id, :summary, :created_at, :updated_at
json.url patient_visit_url(patient_visit, format: :json)
