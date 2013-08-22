require 'spec_helper'

describe "Contacts" do
  describe "GET /Joraaver/contacts/new  OR /Suchaaver/contacts/new" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_contact_path
      response.status.should be(200)
    end
  end
end
