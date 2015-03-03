require 'test_helper'

class MailenablesControllerTest < ActionController::TestCase
  setup do
    @mailenable = mailenables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailenables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailenable" do
    assert_difference('Mailenable.count') do
      post :create, mailenable: { name: @mailenable.name }
    end

    assert_redirected_to mailenable_path(assigns(:mailenable))
  end

  test "should show mailenable" do
    get :show, id: @mailenable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailenable
    assert_response :success
  end

  test "should update mailenable" do
    patch :update, id: @mailenable, mailenable: { name: @mailenable.name }
    assert_redirected_to mailenable_path(assigns(:mailenable))
  end

  test "should destroy mailenable" do
    assert_difference('Mailenable.count', -1) do
      delete :destroy, id: @mailenable
    end

    assert_redirected_to mailenables_path
  end
end
