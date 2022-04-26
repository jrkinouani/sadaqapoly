require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do

  describe "GET show" do
    it "assigns @users" do
      # création d'une instance
      user = User.create

      # on va sur show
      get :show, id: user.id

      # @user doit être user
      expect(assigns(:user)).to eq(user)
    end

    it "renders the show template" do
      # va sur show
      get :show

      # on doit rediriger vers show
      expect(response).to render_template("show")
    end
  end

end
