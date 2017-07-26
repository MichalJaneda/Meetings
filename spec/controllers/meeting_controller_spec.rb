require 'rails_helper'

RSpec.describe MeetingController, type: :controller do
  render_views

  describe "GET #index" do

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    context 'when no meetings' do

      it 'displays info about no meetings' do
        expect(controller).to receive(:meetings).and_return([])
        get :index

        expect(response.body).to have_css('h1', text: 'No meetings')
      end

      it 'meetings list length is 0' do
        expect(controller).to receive(:meetings).and_return([])
        get :index

        expect(response.body).to_not have_css('ul#agreements li')
      end

    end

    context 'when there are 10 meetings' do

      it 'meetings list length is 10' do
        expect(controller).to receive(:meetings).and_return(build_list(:meeting, 10))
        get :index

        expect(response.body).to have_css('ul#agreements li', count: 10)
      end

    end

  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
