require 'test_helper'

class BetriebssystemtypsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @betriebssystemtyp = betriebssystemtyps(:one)
  end

  test "should get index" do
    get betriebssystemtyps_url
    assert_response :success
  end

  test "should get new" do
    get new_betriebssystemtyp_url
    assert_response :success
  end

  test "should create betriebssystemtyp" do
    assert_difference('Betriebssystemtyp.count') do
      post betriebssystemtyps_url, params: { betriebssystemtyp: { name: @betriebssystemtyp.name } }
    end

    assert_redirected_to betriebssystemtyp_url(Betriebssystemtyp.last)
  end

  test "should show betriebssystemtyp" do
    get betriebssystemtyp_url(@betriebssystemtyp)
    assert_response :success
  end

  test "should get edit" do
    get edit_betriebssystemtyp_url(@betriebssystemtyp)
    assert_response :success
  end

  test "should update betriebssystemtyp" do
    patch betriebssystemtyp_url(@betriebssystemtyp), params: { betriebssystemtyp: { name: @betriebssystemtyp.name } }
    assert_redirected_to betriebssystemtyp_url(@betriebssystemtyp)
  end

  test "should destroy betriebssystemtyp" do
    assert_difference('Betriebssystemtyp.count', -1) do
      delete betriebssystemtyp_url(@betriebssystemtyp)
    end

    assert_redirected_to betriebssystemtyps_url
  end
end
