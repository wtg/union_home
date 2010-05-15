require 'test_helper'

class PageSidebarsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_sidebars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_sidebar" do
    assert_difference('PageSidebar.count') do
      post :create, :page_sidebar => { }
    end

    assert_redirected_to page_sidebar_path(assigns(:page_sidebar))
  end

  test "should show page_sidebar" do
    get :show, :id => page_sidebars(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => page_sidebars(:one).to_param
    assert_response :success
  end

  test "should update page_sidebar" do
    put :update, :id => page_sidebars(:one).to_param, :page_sidebar => { }
    assert_redirected_to page_sidebar_path(assigns(:page_sidebar))
  end

  test "should destroy page_sidebar" do
    assert_difference('PageSidebar.count', -1) do
      delete :destroy, :id => page_sidebars(:one).to_param
    end

    assert_redirected_to page_sidebars_path
  end
end
