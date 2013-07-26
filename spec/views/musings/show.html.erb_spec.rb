require 'spec_helper'

describe "musings/show" do
  before(:each) do
    @musing = assign(:musing, stub_model(Musing,
      :title => "Title",
      :post => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
