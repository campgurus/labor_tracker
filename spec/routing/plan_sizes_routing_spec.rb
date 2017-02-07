require "rails_helper"

RSpec.describe PlanSizesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/plan_sizes").to route_to("plan_sizes#index")
    end

    it "routes to #new" do
      expect(:get => "/plan_sizes/new").to route_to("plan_sizes#new")
    end

    it "routes to #show" do
      expect(:get => "/plan_sizes/1").to route_to("plan_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/plan_sizes/1/edit").to route_to("plan_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/plan_sizes").to route_to("plan_sizes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/plan_sizes/1").to route_to("plan_sizes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/plan_sizes/1").to route_to("plan_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/plan_sizes/1").to route_to("plan_sizes#destroy", :id => "1")
    end

  end
end
