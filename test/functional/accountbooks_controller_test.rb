require 'test_helper'

class AccountbooksControllerTest < ActionController::TestCase
  setup do
    @accountbook = accountbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accountbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accountbook" do
    assert_difference('Accountbook.count') do
      post :create, :accountbook => @accountbook.attributes
    end

    assert_redirected_to accountbook_path(assigns(:accountbook))
  end

  test "should show accountbook" do
    get :show, :id => @accountbook.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @accountbook.to_param
    assert_response :success
  end

  test "should update accountbook" do
    put :update, :id => @accountbook.to_param, :accountbook => @accountbook.attributes
    assert_redirected_to accountbook_path(assigns(:accountbook))
  end

  test "should destroy accountbook" do
    assert_difference('Accountbook.count', -1) do
      delete :destroy, :id => @accountbook.to_param
    end

    assert_redirected_to accountbooks_path
  end
end
