class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  #  def index
  #    @patient = Patient.new
  #    @patients = Patient.all
  #  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
    @patients = Patient.all
    @patient_visit = PatientVisit.new
  end

  # GET /patients/1/edit
  def edit
  end

  def index
      redirect_to controller: 'patients', action: 'new', anchor: 'all-panel'
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)
    @patients = Patient.all

      if @patient.save
        redirect_to controller: 'patients', action: 'new', anchor: 'all-panel'
        flash[:notice] = "Patient was Successfully Created!"
      else
        flash[:error] = @patient.errors.full_messages.to_sentence
        render :new

      end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to new_patient_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:folder_number, :first_name, :last_name, :date_of_birth, :gender, :address)
    end
end
