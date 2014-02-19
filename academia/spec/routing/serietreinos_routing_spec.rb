require "spec_helper"

describe SerietreinosController do
  describe "routing" do

    it "routes to #index" do
      get("/serietreinos").should route_to("serietreinos#index")
    end

    it "routes to #new" do
      get("/serietreinos/new").should route_to("serietreinos#new")
    end

    it "routes to #show" do
      get("/serietreinos/1").should route_to("serietreinos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/serietreinos/1/edit").should route_to("serietreinos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/serietreinos").should route_to("serietreinos#create")
    end

    it "routes to #update" do
      put("/serietreinos/1").should route_to("serietreinos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/serietreinos/1").should route_to("serietreinos#destroy", :id => "1")
    end

  end
end
