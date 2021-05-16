require "test_helper"

class ColidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colid = colids(:one)
  end

  test "should get index" do
    get colids_url
    assert_response :success
  end

  test "should get new" do
    get new_colid_url
    assert_response :success
  end

  test "should create colid" do
    assert_difference('Colid.count') do
      post colids_url, params: { colid: { email: @colid.email, location: @colid.location, name: @colid.name, phone: @colid.phone, staff: @colid.staff } }
    end

    assert_redirected_to colid_url(Colid.last)
  end

  test "should show colid" do
    get colid_url(@colid)
    assert_response :success
  end

  test "should get edit" do
    get edit_colid_url(@colid)
    assert_response :success
  end

  test "should update colid" do
    patch colid_url(@colid), params: { colid: { email: @colid.email, location: @colid.location, name: @colid.name, phone: @colid.phone, staff: @colid.staff } }
    assert_redirected_to colid_url(@colid)
  end

  test "should destroy colid" do
    assert_difference('Colid.count', -1) do
      delete colid_url(@colid)
    end

    assert_redirected_to colids_url
  end
end
