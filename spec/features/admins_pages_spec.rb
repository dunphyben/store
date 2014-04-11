require 'spec_helper'

describe Admin do
    context "log in" do
        it 'lets an admin log in' do
            admin = FactoryGirl.create(:admin)
            visit 'sessions/new'
            fill_in "Email", with: admin.email
            fill_in "Password", with: admin.password
            click_button "Log In"
            page.should have_content "Admin logged in successfully"
        end
    end
end
