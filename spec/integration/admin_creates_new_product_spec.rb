require 'spec_helper'

feature "admin creates a new product" do
  scenario "successfully creates a new product" do
    visit root_path
    click_link "Products"
    click_link "New Product"
    fill_in "Name", with: "Foo"
    fill_in "Description", with: "Bar"
    fill_in "Price", with: "10"
    click_button "Create Product"
    page.should have_content "Product was successfully created"
  end
end
