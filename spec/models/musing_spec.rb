require 'spec_helper'

describe Musing do

  before(:each) do
    @musing = FactoryGirl.build(:musing)
  end

  describe "musing attr" do
    it "has many images" do 
      @musing.should have_many(:images)
    end
  end

  
  describe "new musing" do 


    it "is invalid without name" do 
      @musing.title = nil
      @musing.should be_invalid
    end
  
    it "is invalid without date" do
      @musing.date = nil
      @musing.should be_invalid
    end
 
    it "is invalid without post" do
      @musing.post = nil
      @musing.should be_invalid
    end
  end
end
