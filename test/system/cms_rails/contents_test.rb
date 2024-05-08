require "application_system_test_case"

module CmsRails
  class ContentsTest < ApplicationSystemTestCase
    setup do
      @content = cms_rails_contents(:one)
    end

    test "visiting the index" do
      visit contents_url
      assert_selector "h1", text: "Contents"
    end

    test "should create content" do
      visit contents_url
      click_on "New content"

      fill_in "Author", with: @content.Author
      fill_in "Body", with: @content.Body
      fill_in "Description", with: @content.Description
      fill_in "Manufacturer", with: @content.Manufacturer
      fill_in "Price", with: @content.Price
      fill_in "Product", with: @content.Product
      fill_in "Title", with: @content.Title
      click_on "Create Content"

      assert_text "Content was successfully created"
      click_on "Back"
    end

    test "should update Content" do
      visit content_url(@content)
      click_on "Edit this content", match: :first

      fill_in "Author", with: @content.Author
      fill_in "Body", with: @content.Body
      fill_in "Description", with: @content.Description
      fill_in "Manufacturer", with: @content.Manufacturer
      fill_in "Price", with: @content.Price
      fill_in "Product", with: @content.Product
      fill_in "Title", with: @content.Title
      click_on "Update Content"

      assert_text "Content was successfully updated"
      click_on "Back"
    end

    test "should destroy Content" do
      visit content_url(@content)
      click_on "Destroy this content", match: :first

      assert_text "Content was successfully destroyed"
    end
  end
end
