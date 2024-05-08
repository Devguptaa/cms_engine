require "application_system_test_case"

module CmsRails
  class TemplatesTest < ApplicationSystemTestCase
    setup do
      @template = cms_rails_templates(:one)
    end

    test "visiting the index" do
      visit templates_url
      assert_selector "h1", text: "Templates"
    end

    test "should create template" do
      visit templates_url
      click_on "New template"

      fill_in "Category", with: @template.category_id
      fill_in "File path", with: @template.file_path
      fill_in "Name", with: @template.name
      click_on "Create Template"

      assert_text "Template was successfully created"
      click_on "Back"
    end

    test "should update Template" do
      visit template_url(@template)
      click_on "Edit this template", match: :first

      fill_in "Category", with: @template.category_id
      fill_in "File path", with: @template.file_path
      fill_in "Name", with: @template.name
      click_on "Update Template"

      assert_text "Template was successfully updated"
      click_on "Back"
    end

    test "should destroy Template" do
      visit template_url(@template)
      click_on "Destroy this template", match: :first

      assert_text "Template was successfully destroyed"
    end
  end
end
