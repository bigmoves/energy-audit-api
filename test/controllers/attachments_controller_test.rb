require 'test_helper'

class AttachmentsControllerTest < ActionController::TestCase
  setup do
    @attachment = attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attachments)
  end

  test "should create attachment" do
    assert_difference('Attachment.count') do
      post :create, attachment: {  }
    end

    assert_response 201
  end

  test "should show attachment" do
    get :show, id: @attachment
    assert_response :success
  end

  test "should update attachment" do
    put :update, id: @attachment, attachment: {  }
    assert_response 204
  end

  test "should destroy attachment" do
    assert_difference('Attachment.count', -1) do
      delete :destroy, id: @attachment
    end

    assert_response 204
  end
end
