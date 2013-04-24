require 'test_helper'

class IdddntegersControllerTest < ActionController::TestCase
  setup do
    @idddnteger = idddntegers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idddntegers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idddnteger" do
    assert_difference('Idddnteger.count') do
      post :create, idddnteger: { number: @idddnteger.number }
    end

    assert_redirected_to idddnteger_path(assigns(:idddnteger))
  end

  test "should show idddnteger" do
    get :show, id: @idddnteger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idddnteger
    assert_response :success
  end

  test "should update idddnteger" do
    put :update, id: @idddnteger, idddnteger: { number: @idddnteger.number }
    assert_redirected_to idddnteger_path(assigns(:idddnteger))
  end

  test "should destroy idddnteger" do
    assert_difference('Idddnteger.count', -1) do
      delete :destroy, id: @idddnteger
    end

    assert_redirected_to idddntegers_path
  end
end
