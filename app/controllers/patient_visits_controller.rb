class PatientVisitsController < ApplicationController
  before_action :set_patient_visit, only: [:show, :edit, :update, :destroy]

  # GET /patient_visits
  # GET /patient_visits.json
  def index
    @patient_visits = PatientVisit.all
  end

  # GET /patient_visits/1
  # GET /patient_visits/1.json
  def show
    @patient = Patient.find(@patient_visit.patient_id)

  end

  # GET /patient_visits/new
  def new
    @patient_visit = PatientVisit.new

    @patient_visit.build_prescription
    @patient_visit.doctors.build
    @patient_visit.disease_conditions.build



  end

  # GET /patient_visits/1/edit
  def edit
  end

  # POST /patient_visits
  # POST /patient_visits.json
  def create
    @patient_visit = PatientVisit.new(patient_visit_params)
    @prescription = Prescription.offset(rand(Prescription.count)).first
    @patient_visit_doctors = Doctor.offset(rand(Doctor.count) - 1).limit(1)
    @patient_visit_disease_conditions = DiseaseCondition.offset(rand(DiseaseCondition.count) - 1).limit(1)
    @patient_visit.prescription_id = @prescription.id
    @patient_visit.doctor_ids = @patient_visit_doctors.map(&:id)
    @patient_visit.disease_condition_ids = @patient_visit_disease_conditions.map(&:id)
    @patient_visit.questions << Question.all

    @patient_visit.questions.each do
      @patient_visit.responses << Response.new(:response => 'Yes')
    end

    respond_to do |format|
      if @patient_visit.save
        format.html { redirect_to @patient_visit, notice: 'Patient visit was successfully created.' }
        format.json { render :show, status: :created, location: @patient_visit }
      else
        format.html { render :new }
        format.json { render json: @patient_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_visits/1
  # PATCH/PUT /patient_visits/1.json
  def update
    respond_to do |format|
      if @patient_visit.update(patient_visit_params)
        format.html { redirect_to @patient_visit, notice: 'Patient visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_visit }
      else
        format.html { render :edit }
        format.json { render json: @patient_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_visits/1
  # DELETE /patient_visits/1.json
  def destroy
    @patient_visit.destroy
    respond_to do |format|
      format.html { redirect_to patient_visits_url, notice: 'Patient visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_visit
      @patient_visit = PatientVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_visit_params
      params.require(:patient_visit).permit(:summary, :patient_id, :prescription_id, :doctor_ids => [], :disease_condition_ids => [], :question_ids  => [] )
    end
end
