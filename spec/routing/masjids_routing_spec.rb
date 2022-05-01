require "rails_helper"

RSpec.describe MasjidsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/masjids").to route_to("masjids#index")
    end

    it "routes to #new" do
      expect(get: "/masjids/new").to route_to("masjids#new")
    end

    it "routes to #show" do
      expect(get: "/masjids/1").to route_to("masjids#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/masjids/1/edit").to route_to("masjids#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/masjids").to route_to("masjids#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/masjids/1").to route_to("masjids#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/masjids/1").to route_to("masjids#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/masjids/1").to route_to("masjids#destroy", id: "1")
    end
  end
end
