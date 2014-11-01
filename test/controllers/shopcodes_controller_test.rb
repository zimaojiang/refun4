require 'test_helper'

class ShopcodesControllerTest < ActionController::TestCase
  setup do
    @shopcode = shopcodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopcodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopcode" do
    assert_difference('Shopcode.count') do
      post :create, shopcode: { comment: @shopcode.comment, email: @shopcode.email, exp_date: @shopcode.exp_date, first_name: @shopcode.first_name, issue_date: @shopcode.issue_date, last_name: @shopcode.last_name, order_no: @shopcode.order_no, shop_code: @shopcode.shop_code, status: @shopcode.status, store_credit: @shopcode.store_credit }
    end

    assert_redirected_to shopcode_path(assigns(:shopcode))
  end

  test "should show shopcode" do
    get :show, id: @shopcode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopcode
    assert_response :success
  end

  test "should update shopcode" do
    patch :update, id: @shopcode, shopcode: { comment: @shopcode.comment, email: @shopcode.email, exp_date: @shopcode.exp_date, first_name: @shopcode.first_name, issue_date: @shopcode.issue_date, last_name: @shopcode.last_name, order_no: @shopcode.order_no, shop_code: @shopcode.shop_code, status: @shopcode.status, store_credit: @shopcode.store_credit }
    assert_redirected_to shopcode_path(assigns(:shopcode))
  end

  test "should destroy shopcode" do
    assert_difference('Shopcode.count', -1) do
      delete :destroy, id: @shopcode
    end

    assert_redirected_to shopcodes_path
  end
end
