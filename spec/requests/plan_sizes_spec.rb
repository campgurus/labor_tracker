require 'rails_helper'

RSpec.describe "PlanSizes", type: :request do
  describe "GET /plan_sizes" do
    it "works! (now write some real specs)" do
      get plan_sizes_path
      expect(response).to have_http_status(200)
    end
  end
end
