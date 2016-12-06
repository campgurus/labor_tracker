require "rails_helper"

RSpec.describe ShiftActualsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/shift_actuals").to route_to("shift_actuals#index")
    end

    it "routes to #new" do
      expect(:get => "/shift_actuals/new").to route_to("shift_actuals#new")
    end

    it "routes to #show" do
      expect(:get => "/shift_actuals/1").to route_to("shift_actuals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/shift_actuals/1/edit").to route_to("shift_actuals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/shift_actuals").to route_to("shift_actuals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/shift_actuals/1").to route_to("shift_actuals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/shift_actuals/1").to route_to("shift_actuals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/shift_actuals/1").to route_to("shift_actuals#destroy", :id => "1")
    end

  end
end
