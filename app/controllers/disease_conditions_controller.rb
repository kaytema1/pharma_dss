class DiseaseConditionsController < ApplicationController
  before_action :set_disease_condition, only: [:show, :edit, :update, :destroy]

  # GET /disease_conditions
  # GET /disease_conditions.json
  def index
    @disease_conditions = DiseaseCondition.all
  end

  # GET /disease_conditions/1
  # GET /disease_conditions/1.json
  def show
  end

  # GET /disease_conditions/new
  def new
    @disease_condition = DiseaseCondition.new
  end

  # GET /disease_conditions/1/edit
  def edit
  end

  # POST /disease_conditions
  # POST /disease_conditions.json
  def create
    @disease_condition = DiseaseCondition.new(disease_condition_params)

    respond_to do |format|
      if @disease_condition.save
        format.html { redirect_to @disease_condition, notice: 'Disease condition was successfully created.' }
        format.json { render :show, status: :created, location: @disease_condition }
      else
        format.html { render :new }
        format.json { render json: @disease_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disease_conditions/1
  # PATCH/PUT /disease_conditions/1.json
  def update
    respond_to do |format|
      if @disease_condition.update(disease_condition_params)
        format.html { redirect_to @disease_condition, notice: 'Disease condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @disease_condition }
      else
        format.html { render :edit }
        format.json { render json: @disease_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disease_conditions/1
  # DELETE /disease_conditions/1.json
  def destroy
    @disease_condition.destroy
    respond_to do |format|
      format.html { redirect_to disease_conditions_url, notice: 'Disease condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease_condition
      @disease_condition = DiseaseCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disease_condition_params
      params.require(:disease_condition).permit(:icd_10, :patient_visit_id)
    end
end
