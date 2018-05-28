require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(first_name: "Thingy", last_name: "One", email: "thingy1@shinyworld.com", password: "thingy1") }
  let(:user2) { User.create!(first_name: "Thingy", last_name: "Two",email: "thingy2@shinyworld.com", password: "thingy2") }


  describe 'GET #show:' do
    context 'When user is logged in' do
      before do
        sign_in user
    end

    it 'Loads correct user details' do
        get :show, params: { id: user.id }
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
    end

    it 'Can not access other users show page' do
      get :show, params: { id: user2.id }
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_path)
    end
  end

    context 'When a user is not logged in' do
      it 'redirects to login' do
        get :show, params: { id: user.id }
       expect(response).to redirect_to(new_user_session_path)
      end
    end

  end
end
