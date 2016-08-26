require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "GET #index" do
    # it "responds with status code 200" do
    #   get :index
    #   expect(response).to have_http_status 200
    # end
    #
    # it "assigns the recent games as @games" do
    #   get :index
    #   expect(assigns(:games)).to eq(Game.recent)
    # end
    #
    # it "renders the :index template" do
    #   get :index
    #   expect(response).to render_template(:index)
    # end
  end

  describe "GET #show", :skip => true do
    user = FactoryGirl.create(:user)

    it "responds with status code 200" do
      get :show, params: { id: user.id }
      expect(response).to have_http_status 200
    end

    it "renders the :show template" do
      get :show, params: { id: user.id }, session: { user_id: user.id }
      expect(response).to render_template(:show)
    end
  end

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to have_http_status(200)
    end

    it "assigns a new user to @user" do
      get :new
      expect(assigns(:user)).to be_a_new User
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    context "when valid params are passed" do
      attributes = FactoryGirl.attributes_for(:user)
      attributes[:password_confirmation] = 'asdf'

      it "responds with status code 302" do
        post :create, params: { user: attributes }
        expect(response).to have_http_status(302)
      end

      it "creates a new game in the database" do
        expect{
          post :create, params: { user: attributes }
        }.to change { User.count }
      end

      it "assigns the newly created game as @user", :skip => true do
        post :create, params: { user: attributes }
        expect(assigns(:user)).to eq(User.last)
      end

      it "redirects to the created user" do
        post :create, params: { user: attributes }
        expect(response).to redirect_to(User.last)
      end
    end

    # context "when invalid params are passed" do
    #   it "responds with status code 200" do
    #     post :create, new_user = create(:user)
    #     expect(response).to have_http_status 200
    #   end
    #
    #   it "does not create a new game in the database" do
    #     expect{
    #       post :create, game: { user_throw: "pineapple"}
    #     }.to_not change { Game.count }
    #   end
    #
    #   it "assigns the unsaved game as @game" do
    #     post :create, { game: { user_throw: "pineapple" } }
    #     expect(assigns(:game)).to_not eq(Game.last)
    #   end
    #
    #   it "renders the :new template" do
    #     post :create, { game: { user_throw: "pineapple" } }
    #     expect(response).to render_template(:new)
    #   end
    # end
  end

  # describe "DELETE #destroy" do
  #   it "responds with status code 302" do
  #     delete :destroy, { id: game.id }
  #     expect(response).to have_http_status 302
  #   end
  #
  #   it "destroys the requested game" do
  #     expect { delete(:destroy, { id: game.id }) }.to change(Game, :count).by(-1)
  #   end
  #
  #   it "sets a notice that the game was destroyed" do
  #     delete :destroy, { id: game.id }
  #     expect(flash[:notice]).to match /Game was successfully destroyed/
  #   end
  #
  #   it "redirects to the games list" do
  #     delete :destroy, { id: game.id }
  #     expect(response).to redirect_to games_url
  #   end
  # end
end
