require 'test_helper'

class TypeOfCleaningAndWashingsControllerTest < ActionController::TestCase
  setup do
    @type_of_cleaning_and_washing = type_of_cleaning_and_washings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_of_cleaning_and_washings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_of_cleaning_and_washing" do
    assert_difference('TypeOfCleaningAndWashing.count') do
      post :create, type_of_cleaning_and_washing: { mem_price: @type_of_cleaning_and_washing.mem_price, name: @type_of_cleaning_and_washing.name, price: @type_of_cleaning_and_washing.price }
    end

    assert_redirected_to type_of_cleaning_and_washing_path(assigns(:type_of_cleaning_and_washing))
  end

  test "should show type_of_cleaning_and_washing" do
    get :show, id: @type_of_cleaning_and_washing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_of_cleaning_and_washing
    assert_response :success
  end

  test "should update type_of_cleaning_and_washing" do
    put :update, id: @type_of_cleaning_and_washing, type_of_cleaning_and_washing: { mem_price: @type_of_cleaning_and_washing.mem_price, name: @type_of_cleaning_and_washing.name, price: @type_of_cleaning_and_washing.price }
    assert_redirected_to type_of_cleaning_and_washing_path(assigns(:type_of_cleaning_and_washing))
  end

  test "should destroy type_of_cleaning_and_washing" do
    assert_difference('TypeOfCleaningAndWashing.count', -1) do
      delete :destroy, id: @type_of_cleaning_and_washing
    end

    assert_redirected_to type_of_cleaning_and_washings_path
  end
end
