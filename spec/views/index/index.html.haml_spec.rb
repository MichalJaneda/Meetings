require 'rails_helper'

RSpec.describe 'index/index.html.haml', type: :view do

  it 'displays hello in h1' do
    render

    expect(rendered).to have_content 'Hello'
  end

  context 'when user is authenticated' do

    it 'it greets user by name' do
      current_user = create(:user)
      sign_in current_user

      render

      expect(rendered).to have_content current_user.name
    end

  end

end
