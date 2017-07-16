json.extract! question, :id, :text, :patient_visit_id, :created_at, :updated_at
json.url question_url(question, format: :json)
