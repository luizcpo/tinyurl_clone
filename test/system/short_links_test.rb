require "application_system_test_case"

class ShortLinksTest < ApplicationSystemTestCase
  setup do
    @short_link = short_links(:one)
  end

  test "visiting the index" do
    visit short_links_url
    assert_selector "h1", text: "Short Links"
  end

  test "creating a Short link" do
    visit short_links_url
    click_on "New Short Link"

    fill_in "Statistics", with: @short_link.statistics_id
    fill_in "Token", with: @short_link.token
    fill_in "Url", with: @short_link.url
    click_on "Create Short link"

    assert_text "Short link was successfully created"
    click_on "Back"
  end

  test "updating a Short link" do
    visit short_links_url
    click_on "Edit", match: :first

    fill_in "Statistics", with: @short_link.statistics_id
    fill_in "Token", with: @short_link.token
    fill_in "Url", with: @short_link.url
    click_on "Update Short link"

    assert_text "Short link was successfully updated"
    click_on "Back"
  end

  test "destroying a Short link" do
    visit short_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Short link was successfully destroyed"
  end
end
