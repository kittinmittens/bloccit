require 'rails_helper'
RSpec.describe WelcomeController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  describe "GET about" do
    it "renders the about template" do
      get :about
      expect(response).to render_template("about")
    end
  end
  describe "FAQ about" do
    it "renders the FAQ template" do
      get :FAQ
      expect(response).to render_template("FAQ")
    end
  end
end
