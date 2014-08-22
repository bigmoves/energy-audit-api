require 'test_helper'

class BuildingsControllerTest < ActionController::TestCase
  setup do
    @building = buildings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buildings)
  end

  test "should create building" do
    assert_difference('Building.count') do
      post :create, building: {  }
    end

    assert_response 201
  end

  test "should show building" do
    get :show, id: @building
    assert_response :success
  end

  test "should update building" do
    put :update, id: @building, building: {  }
    assert_response 204
  end

  test "should destroy building" do
    assert_difference('Building.count', -1) do
      delete :destroy, id: @building
    end

    assert_response 204
  end
end
