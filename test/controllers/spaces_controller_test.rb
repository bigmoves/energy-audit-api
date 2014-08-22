require 'test_helper'

class SpacesControllerTest < ActionController::TestCase
  setup do
    @space = spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spaces)
  end

  test "should create space" do
    assert_difference('Space.count') do
      post :create, space: {  }
    end

    assert_response 201
  end

  test "should show space" do
    get :show, id: @space
    assert_response :success
  end

  test "should update space" do
    put :update, id: @space, space: {  }
    assert_response 204
  end

  test "should destroy space" do
    assert_difference('Space.count', -1) do
      delete :destroy, id: @space
    end

    assert_response 204
  end
end
