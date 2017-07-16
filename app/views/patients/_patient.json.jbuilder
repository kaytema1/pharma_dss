json.extract! patient, :id, :folder_number, :first_name, :last_name, :date_of_birth, :gender, :address, :patient_visit_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
