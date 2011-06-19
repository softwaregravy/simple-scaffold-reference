require 'spec_helper'

describe "snacks/show.html.erb" do
  before(:each) do
    @snack = assign(:snack, stub_model(Snack,
      :healthy => false,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
