require 'rails_helper'

RSpec.describe IndexController, type: :controller do
  render_views

  describe 'GET #index' do

    context 'when user is authenticated' do
      login_user

      it 'it greets user by name' do
        get :index
        expect(view).to have_content subject.current_user.name
      end

    end
  end

end
