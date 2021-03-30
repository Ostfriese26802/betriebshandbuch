require 'test_helper'

class HardwaretypzuserversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hardwaretypzuserver = hardwaretypzuservers(:one)
  end

  test "should get index" do
    get hardwaretypzuservers_url
    assert_response :success
  end

  test "should get new" do
    get new_hardwaretypzuserver_url
    assert_response :success
  end

  test "should create hardwaretypzuserver" do
    assert_difference('Hardwaretypzuserver.count') do
      post hardwaretypzuservers_url, params: { hardwaretypzuserver: { hardwaretyp_id: @hardwaretypzuserver.hardwaretyp_id, server_id: @hardwaretypzuserver.server_id, wert: @hardwaretypzuserver.wert } }
    end

    assert_redirected_to hardwaretypzuserver_url(Hardwaretypzuserver.last)
  end

  test "should show hardwaretypzuserver" do
    get hardwaretypzuserver_url(@hardwaretypzuserver)
    assert_response :success
  end

  test "should get edit" do
    get edit_hardwaretypzuserver_url(@hardwaretypzuserver)
    assert_response :success
  end

  test "should update hardwaretypzuserver" do
    patch hardwaretypzuserver_url(@hardwaretypzuserver), params: { hardwaretypzuserver: { hardwaretyp_id: @hardwaretypzuserver.hardwaretyp_id, server_id: @hardwaretypzuserver.server_id, wert: @hardwaretypzuserver.wert } }
    assert_redirected_to hardwaretypzuserver_url(@hardwaretypzuserver)
  end

  test "should destroy hardwaretypzuserver" do
    assert_difference('Hardwaretypzuserver.count', -1) do
      delete hardwaretypzuserver_url(@hardwaretypzuserver)
    end

    assert_redirected_to hardwaretypzuservers_url
  end
end
