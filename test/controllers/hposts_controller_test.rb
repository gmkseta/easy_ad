require 'test_helper'

class HpostsControllerTest < ActionController::TestCase
  setup do
    @hpost = hposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hpost" do
    assert_difference('Hpost.count') do
      post :create, hpost: { htmltag: @hpost.htmltag, picture: @hpost.picture, result: @hpost.result }
    end

    assert_redirected_to hpost_path(assigns(:hpost))
  end

  test "should show hpost" do
    get :show, id: @hpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hpost
    assert_response :success
  end

  test "should update hpost" do
    patch :update, id: @hpost, hpost: { htmltag: @hpost.htmltag, picture: @hpost.picture, result: @hpost.result }
    assert_redirected_to hpost_path(assigns(:hpost))
  end

  test "should destroy hpost" do
    assert_difference('Hpost.count', -1) do
      delete :destroy, id: @hpost
    end

    assert_redirected_to hposts_path
  end
end
