require 'rails_helper'

describe 'home page' do
  it 'all users can see the home page' do
    visit home_path
    expect(page).to have_link('Home')
    expect(page).to have_link('Guias')
    expect(page).to have_link('Login')
  end

  it 'how logged users see the home page' do
    user = create(:user)
    login_as user, scope: :user

    visit home_path

    expect(page).to have_link('Home')
    expect(page).to have_link('Guias')
  end
end
