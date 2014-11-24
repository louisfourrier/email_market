require 'test_helper'

class MailAccountsControllerTest < ActionController::TestCase
  setup do
    @mail_account = mail_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_account" do
    assert_difference('MailAccount.count') do
      post :create, mail_account: { email_verified: @mail_account.email_verified, user_id: @mail_account.user_id, verify_sent_date: @mail_account.verify_sent_date, verify_token: @mail_account.verify_token }
    end

    assert_redirected_to mail_account_path(assigns(:mail_account))
  end

  test "should show mail_account" do
    get :show, id: @mail_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_account
    assert_response :success
  end

  test "should update mail_account" do
    patch :update, id: @mail_account, mail_account: { email_verified: @mail_account.email_verified, user_id: @mail_account.user_id, verify_sent_date: @mail_account.verify_sent_date, verify_token: @mail_account.verify_token }
    assert_redirected_to mail_account_path(assigns(:mail_account))
  end

  test "should destroy mail_account" do
    assert_difference('MailAccount.count', -1) do
      delete :destroy, id: @mail_account
    end

    assert_redirected_to mail_accounts_path
  end
end
