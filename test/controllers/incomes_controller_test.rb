require 'test_helper'

class IncomesControllerTest < ActionController::TestCase
  setup do
    @income = incomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create income" do
    assert_difference('Income.count') do
      post :create, income: { content: @income.content, title: @income.title, user_id: @income.user_id }
    end

    assert_redirected_to income_path(assigns(:income))
  end

  test "should show income" do
    get :show, id: @income
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @income
    assert_response :success
  end

  test "should update income" do
    patch :update, id: @income, income: { content: @income.content, title: @income.title, user_id: @income.user_id }
    assert_redirected_to income_path(assigns(:income))
  end

  test "should destroy income" do
    assert_difference('Income.count', -1) do
      delete :destroy, id: @income
    end

    assert_redirected_to incomes_path
  end
end
