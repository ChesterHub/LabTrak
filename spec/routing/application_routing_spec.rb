require "rails_helper"

RSpec.describe "Routing to the application", :type => :routing do

  context "The user IS logged in" do
    it "GET / routes to proposals#index" do
      user = create(:user)
      session[:id] = user.id
      expect(:get => "/").to route_to("proposals#index")
    end
  end

  context "The user IS NOT logged in" do
    it "GET / routes to sessions#new" do
      expect(:get => "/").to route_to("sessions#new")
    end
  end

end
