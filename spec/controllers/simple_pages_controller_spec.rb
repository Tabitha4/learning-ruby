require 'rails_helper'

describe SimplePagesController, type: :controller do

  #GET index page
  context 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

end
