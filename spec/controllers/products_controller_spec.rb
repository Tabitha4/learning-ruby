require 'rails_helper'

describe ProductsController, type: :controller do

  context 'GET #index' do
    before do
      get :index
    end

    it 'responds successfully with an HTTP 200 status code' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
    	get :index, params: {q: "test"}
    	expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

    it "searches with a parameter" do
      get :index, params: {search_term: "shiny"}
      expect(response).to be_successful
    end
    

end
