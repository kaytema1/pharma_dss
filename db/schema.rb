# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170723235357) do

  create_table "DiseaseConditions_Patient_Visits", id: false, force: true do |t|
    t.integer "patient_visit_id",     null: false
    t.integer "disease_condition_id", null: false
  end

  create_table "Doctors_Patient_Visits", id: false, force: true do |t|
    t.integer "patient_visit_id", null: false
    t.integer "doctor_id",        null: false
  end

  add_index "Doctors_Patient_Visits", ["doctor_id", "patient_visit_id"], name: "index_Doctors_Patient_Visits_on_doctor_id_and_patient_visit_id"
  add_index "Doctors_Patient_Visits", ["patient_visit_id", "doctor_id"], name: "index_Doctors_Patient_Visits_on_patient_visit_id_and_doctor_id"

  create_table "Doctors_Prescriptions", id: false, force: true do |t|
    t.integer "prescription_id", null: false
    t.integer "doctor_id",       null: false
  end

  add_index "Doctors_Prescriptions", ["doctor_id", "prescription_id"], name: "index_Doctors_Prescriptions_on_doctor_id_and_prescription_id"
  add_index "Doctors_Prescriptions", ["prescription_id", "doctor_id"], name: "index_Doctors_Prescriptions_on_prescription_id_and_doctor_id"

  create_table "Drugs_Prescriptions", id: false, force: true do |t|
    t.integer "prescription_id", null: false
    t.integer "drug_id",         null: false
  end

  add_index "Drugs_Prescriptions", ["drug_id", "prescription_id"], name: "index_Drugs_Prescriptions_on_drug_id_and_prescription_id"
  add_index "Drugs_Prescriptions", ["prescription_id", "drug_id"], name: "index_Drugs_Prescriptions_on_prescription_id_and_drug_id"

  create_table "Patient_Visits_Questions", id: false, force: true do |t|
    t.integer "patient_visit_id", null: false
    t.integer "question_id",      null: false
  end

  create_table "Patient_Visits_Responses", id: false, force: true do |t|
    t.integer "patient_visit_id", null: false
    t.integer "response_id",      null: false
  end

  create_table "choices", force: true do |t|
    t.string   "option"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disease_conditions", force: true do |t|
    t.string   "icd_10"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_visits", force: true do |t|
    t.text     "summary"
    t.integer  "patient_id"
    t.integer  "prescription_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patient_visits", ["patient_id"], name: "index_patient_visits_on_patient_id"
  add_index "patient_visits", ["prescription_id"], name: "index_patient_visits_on_prescription_id"

  create_table "patients", force: true do |t|
    t.string   "folder_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "date_of_birth"
    t.string   "gender"
    t.string   "address"
    t.integer  "patient_visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patients", ["patient_visit_id"], name: "index_patients_on_patient_visit_id"

  create_table "prescriptions", force: true do |t|
    t.integer  "patient_visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prescriptions", ["patient_visit_id"], name: "index_prescriptions_on_patient_visit_id"

  create_table "questions", force: true do |t|
    t.text     "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", force: true do |t|
    t.string   "response"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
