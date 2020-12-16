require 'test_helper'

class BetriebssystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @betriebssystem = betriebssystems(:one)
  end

  test "should get index" do
    get betriebssystems_url
    assert_response :success
  end

  test "should get new" do
    get new_betriebssystem_url
    assert_response :success
  end

  test "should create betriebssystem" do
    assert_difference('Betriebssystem.count') do
      post betriebssystems_url, params: { betriebssystem: { betriebssystemtyp_id: @betriebssystem.betriebssystemtyp_id, name: @betriebssystem.name } }
    end

    assert_redirected_to betriebssystem_url(Betriebssystem.last)
  end

  test "should show betriebssystem" do
    get betriebssystem_url(@betriebssystem)
    assert_response :success
  end

  test "should get edit" do
    get edit_betriebssystem_url(@betriebssystem)
    assert_response :success
  end

  test "should update betriebssystem" do
    patch betriebssystem_url(@betriebssystem), params: { betriebssystem: { betriebssystemtyp_id: @betriebssystem.betriebssystemtyp_id, name: @betriebssystem.name } }
    assert_redirected_to betriebssystem_url(@betriebssystem)
  end

  test "should destroy betriebssystem" do
    assert_difference('Betriebssystem.count', -1) do
      delete betriebssystem_url(@betriebssystem)
    end

    assert_redirected_to betriebssystems_url
  end
end
