require 'test_helper'

class MailEnablesControllerTest < ActionController::TestCase
  setup do
    @mail_enable = mail_enables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_enables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_enable" do
    assert_difference('MailEnable.count') do
      post :create, mail_enable: { send: @mail_enable.send }
    end

    assert_redirected_to mail_enable_path(assigns(:mail_enable))
  end

  test "should show mail_enable" do
    get :show, id: @mail_enable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_enable
    assert_response :success
  end

  test "should update mail_enable" do
    patch :update, id: @mail_enable, mail_enable: { send: @mail_enable.send }
    assert_redirected_to mail_enable_path(assigns(:mail_enable))
  end

  test "should destroy mail_enable" do
    assert_difference('MailEnable.count', -1) do
      delete :destroy, id: @mail_enable
    end

    assert_redirected_to mail_enables_path
  end
end
