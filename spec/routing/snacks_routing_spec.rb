require "spec_helper"

describe SnacksController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/snacks" }.should route_to(:controller => "snacks", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/snacks/new" }.should route_to(:controller => "snacks", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/snacks/1" }.should route_to(:controller => "snacks", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/snacks/1/edit" }.should route_to(:controller => "snacks", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/snacks" }.should route_to(:controller => "snacks", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/snacks/1" }.should route_to(:controller => "snacks", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/snacks/1" }.should route_to(:controller => "snacks", :action => "destroy", :id => "1")
    end

  end
end
