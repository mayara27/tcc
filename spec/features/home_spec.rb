require 'rails_helper'

describe 'when is not logged' do
  it 'all users can see the home page' do
    visit home_path
    expect(page).to have_content('Ver todas as lojas')
    expect(page).to have_content('Área do Administrador')
    expect(page).to have_content('Área do Dono')
  end
end
