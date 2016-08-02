require 'test_helper'

class VisitersControllerTest < ActionController::TestCase
  setup do
    @visiter = visiters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visiters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visiter" do
    assert_difference('Visiter.count') do
      post :create, visiter: { address: @visiter.address, email: @visiter.email, message: @visiter.message, mob: @visiter.mob, name: @visiter.name }
    end

    assert_redirected_to visiter_path(assigns(:visiter))
  end

  test "should show visiter" do
    get :show, id: @visiter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visiter
    assert_response :success
  end

  test "should update visiter" do
    patch :update, id: @visiter, visiter: { address: @visiter.address, email: @visiter.email, message: @visiter.message, mob: @visiter.mob, name: @visiter.name }
    assert_redirected_to visiter_path(assigns(:visiter))
  end

  test "should destroy visiter" do
    assert_difference('Visiter.count', -1) do
      delete :destroy, id: @visiter
    end

    assert_redirected_to visiters_path
  end
end
