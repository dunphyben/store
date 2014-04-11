require 'spec_helper'

describe Admin do
    context "log in" do
        it 'lets an admin log in' do
            admin = Admin.create
            visit root_path
            fill_in "Email", with: admin.email
            fill_in "Password", with: admin.password
            click_button "Log In"
            page.should have_content "Admin logged in successfully"
            page.should have_content "Logged in as #{admin.name}"
        end
    end
end
