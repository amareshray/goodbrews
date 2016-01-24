require 'test_helper'

class RoastersControllerTest < ActionController::TestCase
  setup do
    @roaster = roasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roaster" do
    assert_difference('Roaster.count') do
      post :create, roaster: { city: @roaster.city, country: @roaster.country, image: @roaster.image, name: @roaster.name, url: @roaster.url }
    end

    assert_redirected_to roaster_path(assigns(:roaster))
  end

  test "should show roaster" do
    get :show, id: @roaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roaster
    assert_response :success
  end

  test "should update roaster" do
    patch :update, id: @roaster, roaster: { city: @roaster.city, country: @roaster.country, image: @roaster.image, name: @roaster.name, url: @roaster.url }
    assert_redirected_to roaster_path(assigns(:roaster))
  end

  test "should destroy roaster" do
    assert_difference('Roaster.count', -1) do
      delete :destroy, id: @roaster
    end

    assert_redirected_to roasters_path
  end
end
