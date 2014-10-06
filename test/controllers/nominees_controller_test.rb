require 'test_helper'

class NomineesControllerTest < ActionController::TestCase
  setup do
    @nominee = nominees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nominees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nominee" do
    assert_difference('Nominee.count') do
      post :create, nominee: { name: @nominee.name, number: @nominee.number, photo: @nominee.photo, votes: @nominee.votes }
    end

    assert_redirected_to nominee_path(assigns(:nominee))
  end

  test "should show nominee" do
    get :show, id: @nominee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nominee
    assert_response :success
  end

  test "should update nominee" do
    patch :update, id: @nominee, nominee: { name: @nominee.name, number: @nominee.number, photo: @nominee.photo, votes: @nominee.votes }
    assert_redirected_to nominee_path(assigns(:nominee))
  end

  test "should destroy nominee" do
    assert_difference('Nominee.count', -1) do
      delete :destroy, id: @nominee
    end

    assert_redirected_to nominees_path
  end
end
