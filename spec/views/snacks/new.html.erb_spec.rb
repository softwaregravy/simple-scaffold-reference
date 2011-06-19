require 'spec_helper'

describe "snacks/new.html.erb" do
  before(:each) do
    assign(:snack, stub_model(Snack,
      :healthy => false,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new snack form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => snacks_path, :method => "post" do
      assert_select "input#snack_healthy", :name => "snack[healthy]"
      assert_select "input#snack_description", :name => "snack[description]"
    end
  end
end
