require "test_helper"

class NewCallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_call = new_calls(:one)
  end

  test "should get index" do
    get new_calls_url
    assert_response :success
  end

  test "should get new" do
    get new_new_call_url
    assert_response :success
  end

  test "should create new_call" do
    assert_difference("NewCall.count") do
      post new_calls_url, params: { new_call: { date: @new_call.date, local: @new_call.local, name: @new_call.name, request: @new_call.request } }
    end

    assert_redirected_to new_call_url(NewCall.last)
  end

  test "should show new_call" do
    get new_call_url(@new_call)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_call_url(@new_call)
    assert_response :success
  end

  test "should update new_call" do
    patch new_call_url(@new_call), params: { new_call: { date: @new_call.date, local: @new_call.local, name: @new_call.name, request: @new_call.request } }
    assert_redirected_to new_call_url(@new_call)
  end

  test "should destroy new_call" do
    assert_difference("NewCall.count", -1) do
      delete new_call_url(@new_call)
    end

    assert_redirected_to new_calls_url
  end
end
