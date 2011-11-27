require 'test_helper'

class ProiectsControllerTest < ActionController::TestCase
  setup do
    @proiect = proiects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proiects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proiect" do
    assert_difference('Proiect.count') do
      post :create, proiect: @proiect.attributes
    end

    assert_redirected_to proiect_path(assigns(:proiect))
  end

  test "should show proiect" do
    get :show, id: @proiect.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proiect.to_param
    assert_response :success
  end

  test "should update proiect" do
    put :update, id: @proiect.to_param, proiect: @proiect.attributes
    assert_redirected_to proiect_path(assigns(:proiect))
  end

  test "should destroy proiect" do
    assert_difference('Proiect.count', -1) do
      delete :destroy, id: @proiect.to_param
    end

    assert_redirected_to proiects_path
  end
end
