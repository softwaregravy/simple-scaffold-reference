require 'spec_helper'

describe "snacks/index.html.erb" do
  before(:each) do
    assign(:snacks, [
      stub_model(Snack,
        :healthy => false,
        :description => "Description"
      ),
      stub_model(Snack,
        :healthy => false,
        :description => "Description"
      )
    ])
  end

  it "renders a list of snacks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
