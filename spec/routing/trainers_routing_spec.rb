require "rails_helper"

RSpec.describe TrainersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/trainers").to route_to("trainers#index")
    end

    it "routes to #new" do
      expect(get: "/trainers/new").to route_to("trainers#new")
    end

    it "routes to #show" do
      expect(get: "/trainers/1").to route_to("trainers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/trainers/1/edit").to route_to("trainers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/trainers").to route_to("trainers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/trainers/1").to route_to("trainers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/trainers/1").to route_to("trainers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/trainers/1").to route_to("trainers#destroy", id: "1")
    end
  end
end
