require 'test_helper'

class CoffeesControllerTest < ActionController::TestCase
  setup do
    @coffee = coffees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffee" do
    assert_difference('Coffee.count') do
      post :create, coffee: { brew_method: @coffee.brew_method, company: @coffee.company, flavors: @coffee.flavors, image: @coffee.image, name: @coffee.name, notes: @coffee.notes, origin: @coffee.origin, rating: @coffee.rating, url: @coffee.url }
    end

    assert_redirected_to coffee_path(assigns(:coffee))
  end

  test "should show coffee" do
    get :show, id: @coffee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coffee
    assert_response :success
  end

  test "should update coffee" do
    patch :update, id: @coffee, coffee: { brew_method: @coffee.brew_method, company: @coffee.company, flavors: @coffee.flavors, image: @coffee.image, name: @coffee.name, notes: @coffee.notes, origin: @coffee.origin, rating: @coffee.rating, url: @coffee.url }
    assert_redirected_to coffee_path(assigns(:coffee))
  end

  test "should destroy coffee" do
    assert_difference('Coffee.count', -1) do
      delete :destroy, id: @coffee
    end

    assert_redirected_to coffees_path
  end
end
