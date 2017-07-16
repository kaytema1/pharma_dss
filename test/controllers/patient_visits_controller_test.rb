require 'test_helper'

class PatientVisitsControllerTest < ActionController::TestCase
  setup do
    @patient_visit = patient_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_visit" do
    assert_difference('PatientVisit.count') do
      post :create, patient_visit: { summary: @patient_visit.summary }
    end

    assert_redirected_to patient_visit_path(assigns(:patient_visit))
  end

  test "should show patient_visit" do
    get :show, id: @patient_visit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_visit
    assert_response :success
  end

  test "should update patient_visit" do
    patch :update, id: @patient_visit, patient_visit: { summary: @patient_visit.summary }
    assert_redirected_to patient_visit_path(assigns(:patient_visit))
  end

  test "should destroy patient_visit" do
    assert_difference('PatientVisit.count', -1) do
      delete :destroy, id: @patient_visit
    end

    assert_redirected_to patient_visits_path
  end
end
