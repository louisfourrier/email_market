require 'test_helper'

class RawMailsControllerTest < ActionController::TestCase
  setup do
    @raw_mail = raw_mails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raw_mails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raw_mail" do
    assert_difference('RawMail.count') do
      post :create, raw_mail: { email_body: @raw_mail.email_body, email_from: @raw_mail.email_from, email_subject: @raw_mail.email_subject }
    end

    assert_redirected_to raw_mail_path(assigns(:raw_mail))
  end

  test "should show raw_mail" do
    get :show, id: @raw_mail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raw_mail
    assert_response :success
  end

  test "should update raw_mail" do
    patch :update, id: @raw_mail, raw_mail: { email_body: @raw_mail.email_body, email_from: @raw_mail.email_from, email_subject: @raw_mail.email_subject }
    assert_redirected_to raw_mail_path(assigns(:raw_mail))
  end

  test "should destroy raw_mail" do
    assert_difference('RawMail.count', -1) do
      delete :destroy, id: @raw_mail
    end

    assert_redirected_to raw_mails_path
  end
end
