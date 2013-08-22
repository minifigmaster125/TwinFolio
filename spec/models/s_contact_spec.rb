require 'spec_helper'

describe SContact do

  before(:each) do
    @contact = FactoryGirl.build(:s_contact)
  end

  
  describe "new contact" do 


    it "is invalid without name" do 
      @contact.name = nil
      @contact.should be_invalid
    end
    it "is invalid without email" do 
      @contact.email = nil
      @contact.should be_invalid
    end
    it "is invalid without body" do 
      @contact.body = nil
      @contact.should be_invalid
    end
  end
end
