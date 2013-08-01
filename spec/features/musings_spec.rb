require 'spec_helper'

describe "Musings" do
  describe "GET /musings" do
    it "has the title 'Musings'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit musings_path
      page.should have_title("Musings")
    end
  end
end
