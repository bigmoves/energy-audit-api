require 'test_helper'

class EquipmentControllerTest < ActionController::TestCase
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment)
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post :create, equipment: {  }
    end

    assert_response 201
  end

  test "should show equipment" do
    get :show, id: @equipment
    assert_response :success
  end

  test "should update equipment" do
    put :update, id: @equipment, equipment: {  }
    assert_response 204
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete :destroy, id: @equipment
    end

    assert_response 204
  end
end
