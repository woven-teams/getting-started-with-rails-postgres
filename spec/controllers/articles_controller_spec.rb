require 'rails_helper'

describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'renders successfully' do
      get :index
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    it 'redirects if a valid article was created' do
      post :create, params: { article: attributes_for(:article) }
      expect(response).to be_redirect
    end
  end
end
