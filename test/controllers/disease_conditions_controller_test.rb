require 'test_helper'

class DiseaseConditionsControllerTest < ActionController::TestCase
  setup do
    @disease_condition = disease_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disease_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disease_condition" do
    assert_difference('DiseaseCondition.count') do
      post :create, disease_condition: { icd_10: @disease_condition.icd_10, patient_visit_id: @disease_condition.patient_visit_id }
    end

    assert_redirected_to disease_condition_path(assigns(:disease_condition))
  end

  test "should show disease_condition" do
    get :show, id: @disease_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disease_condition
    assert_response :success
  end

  test "should update disease_condition" do
    patch :update, id: @disease_condition, disease_condition: { icd_10: @disease_condition.icd_10, patient_visit_id: @disease_condition.patient_visit_id }
    assert_redirected_to disease_condition_path(assigns(:disease_condition))
  end

  test "should destroy disease_condition" do
    assert_difference('DiseaseCondition.count', -1) do
      delete :destroy, id: @disease_condition
    end

    assert_redirected_to disease_conditions_path
  end
end
