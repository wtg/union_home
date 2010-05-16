require 'test_helper'

class CategoryPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_page" do
    assert_difference('CategoryPage.count') do
      post :create, :category_page => { }
    end

    assert_redirected_to category_page_path(assigns(:category_page))
  end

  test "should show category_page" do
    get :show, :id => category_pages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => category_pages(:one).to_param
    assert_response :success
  end

  test "should update category_page" do
    put :update, :id => category_pages(:one).to_param, :category_page => { }
    assert_redirected_to category_page_path(assigns(:category_page))
  end

  test "should destroy category_page" do
    assert_difference('CategoryPage.count', -1) do
      delete :destroy, :id => category_pages(:one).to_param
    end

    assert_redirected_to category_pages_path
  end
end
