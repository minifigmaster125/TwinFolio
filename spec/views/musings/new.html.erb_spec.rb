require 'spec_helper'

describe "musings/new" do
  before(:each) do
    assign(:musing, stub_model(Musing,
      :title => "MyString",
      :post => "MyText"
    ).as_new_record)
  end

  it "renders new musing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", musings_path, "post" do
      assert_select "input#musing_title[name=?]", "musing[title]"
      assert_select "textarea#musing_post[name=?]", "musing[post]"
    end
  end
end
