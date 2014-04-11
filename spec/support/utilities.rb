def create_admin_and_sign_in
  admin = create :admin
  visit 'sessions/new'
  fill_in 'Email', with: admin.email
  fill_in 'Password', with: admin.password
  click_button 'Log In'
end
