require 'test_helper'

class KomponententypsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @komponententyp = komponententyps(:one)
  end

  test "should get index" do
    get komponententyps_url
    assert_response :success
  end

  test "should get new" do
    get new_komponententyp_url
    assert_response :success
  end

  test "should create komponententyp" do
    assert_difference('Komponententyp.count') do
      post komponententyps_url, params: { komponententyp: { name: @komponententyp.name } }
    end

    assert_redirected_to komponententyp_url(Komponententyp.last)
  end

  test "should show komponententyp" do
    get komponententyp_url(@komponententyp)
    assert_response :success
  end

  test "should get edit" do
    get edit_komponententyp_url(@komponententyp)
    assert_response :success
  end

  test "should update komponententyp" do
    patch komponententyp_url(@komponententyp), params: { komponententyp: { name: @komponententyp.name } }
    assert_redirected_to komponententyp_url(@komponententyp)
  end

  test "should destroy komponententyp" do
    assert_difference('Komponententyp.count', -1) do
      delete komponententyp_url(@komponententyp)
    end

    assert_redirected_to komponententyps_url
  end
end
