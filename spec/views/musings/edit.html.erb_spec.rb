require 'spec_helper'

describe "musings/edit" do
  before(:each) do
    @musing = assign(:musing, stub_model(Musing,
      :title => "MyString",
      :post => "MyText"
    ))
  end

  it "renders the edit musing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", musing_path(@musing), "post" do
      assert_select "input#musing_title[name=?]", "musing[title]"
      assert_select "textarea#musing_post[name=?]", "musing[post]"
    end
  end
end
