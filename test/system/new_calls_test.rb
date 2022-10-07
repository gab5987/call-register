require "application_system_test_case"

class NewCallsTest < ApplicationSystemTestCase
  setup do
    @new_call = new_calls(:one)
  end

  test "visiting the index" do
    visit new_calls_url
    assert_selector "h1", text: "New calls"
  end

  test "should create new call" do
    visit new_calls_url
    click_on "New new call"

    fill_in "Date", with: @new_call.date
    fill_in "Local", with: @new_call.local
    fill_in "Name", with: @new_call.name
    fill_in "Request", with: @new_call.request
    click_on "Create New call"

    assert_text "New call was successfully created"
    click_on "Back"
  end

  test "should update New call" do
    visit new_call_url(@new_call)
    click_on "Edit this new call", match: :first

    fill_in "Date", with: @new_call.date
    fill_in "Local", with: @new_call.local
    fill_in "Name", with: @new_call.name
    fill_in "Request", with: @new_call.request
    click_on "Update New call"

    assert_text "New call was successfully updated"
    click_on "Back"
  end

  test "should destroy New call" do
    visit new_call_url(@new_call)
    click_on "Destroy this new call", match: :first

    assert_text "New call was successfully destroyed"
  end
end
