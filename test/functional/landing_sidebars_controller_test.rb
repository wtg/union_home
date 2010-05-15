require 'test_helper'

class LandingSidebarsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landing_sidebars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landing_sidebar" do
    assert_difference('LandingSidebar.count') do
      post :create, :landing_sidebar => { }
    end

    assert_redirected_to landing_sidebar_path(assigns(:landing_sidebar))
  end

  test "should show landing_sidebar" do
    get :show, :id => landing_sidebars(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => landing_sidebars(:one).to_param
    assert_response :success
  end

  test "should update landing_sidebar" do
    put :update, :id => landing_sidebars(:one).to_param, :landing_sidebar => { }
    assert_redirected_to landing_sidebar_path(assigns(:landing_sidebar))
  end

  test "should destroy landing_sidebar" do
    assert_difference('LandingSidebar.count', -1) do
      delete :destroy, :id => landing_sidebars(:one).to_param
    end

    assert_redirected_to landing_sidebars_path
  end
end
