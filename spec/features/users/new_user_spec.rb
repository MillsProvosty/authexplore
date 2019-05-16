require 'rails_helper'


RSpec.describe 'As a visitor to the User Index Page', type: :feature do
  it 'I click on Register as User and am taken to new user form' do
    visit users_path

    click_link "Register as Users"

    expect(current_path).to eq(new_user_path)
  end

  it 'When I fill out tha form and click Create user, re-directed to index, see new user' do
    visit new_user_path

    fill_in 'user[name]', with: "Billy U"
    fill_in 'user[email]', with: "Billy@email.com"
    fill_in 'user[password]', with: "10806886"

    click_button "Create User"

    expect(current_path).to eq(users_path)
  end

end
