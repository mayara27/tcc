require 'rails_helper'
require "cancan/matchers"

describe 'guide log in your account' do
  it 'successfully' do
    user = create(:user, email: 'may@guide.com', password:'123456', role:'guide')
    visit home_path
    click_on 'Login'
    fill_in 'Email:', with: 'may@guide.com'
    fill_in 'Senha:', with: '123456'
    click_on 'Entrar'
    expect(current_path).to eq(guides_path)
  end

  it 'ability cancan' do
    user = create(:user, email: 'may@guide.com', password:'123456', role:'guide')
    ability = Ability.new(user)
    expect(ability).to be_able_to(:read, Guide.new)
    expect(ability).to be_able_to(:update, Guide.new)
    expect(ability).to_not be_able_to(:create, Guide.new)
    expect(ability).to_not be_able_to(:destroy, Guide.new)
end

end
