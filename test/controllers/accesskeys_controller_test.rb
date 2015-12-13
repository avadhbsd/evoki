require 'test_helper'

class AccesskeysControllerTest < ActionController::TestCase
  setup do
    @accesskey = accesskeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accesskeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accesskey" do
    assert_difference('Accesskey.count') do
      post :create, accesskey: { active: @accesskey.active, expire_at: @accesskey.expire_at, key: @accesskey.key, location_id: @accesskey.location_id }
    end

    assert_redirected_to accesskey_path(assigns(:accesskey))
  end

  test "should show accesskey" do
    get :show, id: @accesskey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accesskey
    assert_response :success
  end

  test "should update accesskey" do
    patch :update, id: @accesskey, accesskey: { active: @accesskey.active, expire_at: @accesskey.expire_at, key: @accesskey.key, location_id: @accesskey.location_id }
    assert_redirected_to accesskey_path(assigns(:accesskey))
  end

  test "should destroy accesskey" do
    assert_difference('Accesskey.count', -1) do
      delete :destroy, id: @accesskey
    end

    assert_redirected_to accesskeys_path
  end
end
