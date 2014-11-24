require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post :create, cart: { currency: @cart.currency, delivery_date: @cart.delivery_date, message_id: @cart.message_id, products_count: @cart.products_count, total_price: @cart.total_price, treated: @cart.treated, treated_date: @cart.treated_date }
    end

    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should show cart" do
    get :show, id: @cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart
    assert_response :success
  end

  test "should update cart" do
    patch :update, id: @cart, cart: { currency: @cart.currency, delivery_date: @cart.delivery_date, message_id: @cart.message_id, products_count: @cart.products_count, total_price: @cart.total_price, treated: @cart.treated, treated_date: @cart.treated_date }
    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
      delete :destroy, id: @cart
    end

    assert_redirected_to carts_path
  end
end
