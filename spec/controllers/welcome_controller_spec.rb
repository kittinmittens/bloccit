require 'rails_helper'
#1
RSpec.describe WelcomeController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
#2
      get :infex
#3
      expect(response).to render_template("infex")
    end
  end
end
