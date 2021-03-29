require 'test_helper'

class HardwaretypsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hardwaretyp = hardwaretyps(:one)
  end

  test "should get index" do
    get hardwaretyps_url
    assert_response :success
  end

  test "should get new" do
    get new_hardwaretyp_url
    assert_response :success
  end

  test "should create hardwaretyp" do
    assert_difference('Hardwaretyp.count') do
      post hardwaretyps_url, params: { hardwaretyp: { name: @hardwaretyp.name } }
    end

    assert_redirected_to hardwaretyp_url(Hardwaretyp.last)
  end

  test "should show hardwaretyp" do
    get hardwaretyp_url(@hardwaretyp)
    assert_response :success
  end

  test "should get edit" do
    get edit_hardwaretyp_url(@hardwaretyp)
    assert_response :success
  end

  test "should update hardwaretyp" do
    patch hardwaretyp_url(@hardwaretyp), params: { hardwaretyp: { name: @hardwaretyp.name } }
    assert_redirected_to hardwaretyp_url(@hardwaretyp)
  end

  test "should destroy hardwaretyp" do
    assert_difference('Hardwaretyp.count', -1) do
      delete hardwaretyp_url(@hardwaretyp)
    end

    assert_redirected_to hardwaretyps_url
  end
end
