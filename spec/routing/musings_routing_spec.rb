require "spec_helper"

describe MusingsController do
  describe "routing" do

    it "routes to #index" do
      get("/musings").should route_to("musings#index")
    end

    it "routes to #new" do
      get("/musings/new").should route_to("musings#new")
    end

    it "routes to #show" do
      get("/musings/1").should route_to("musings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/musings/1/edit").should route_to("musings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/musings").should route_to("musings#create")
    end

    it "routes to #update" do
      put("/musings/1").should route_to("musings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/musings/1").should route_to("musings#destroy", :id => "1")
    end

  end
end
