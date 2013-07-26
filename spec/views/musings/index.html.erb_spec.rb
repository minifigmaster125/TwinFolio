require 'spec_helper'

describe "musings/index" do
  before(:each) do
    assign(:musings, [
      stub_model(Musing,
        :title => "Title",
        :post => "MyText"
      ),
      stub_model(Musing,
        :title => "Title",
        :post => "MyText"
      )
    ])
  end

  it "renders a list of musings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
