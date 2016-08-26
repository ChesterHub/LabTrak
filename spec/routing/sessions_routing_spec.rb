require 'rails_helper'

RSpec.describe "Routing to users", :type => :routing do

  context "The user IS NOT logged in" do
    it "GET /login routes to sessions#new" do
      expect(:get => "/login").to route_to("sessions#new")
    end

    it "routes POST /login to sessions#create" do
      expect(:post => "/login").to route_to("sessions#create")
    end

    it "routes GET /logout to sessions#destroy" do
      expect(:get => "/logout").to route_to("sessions#destroy")
    end
  end

end
