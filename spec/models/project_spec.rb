require 'spec_helper'

describe Project do

  before(:each) do
    @project = FactoryGirl.build(:project)
  end

  describe "project attr" do
    it "has many images" do 
      @project.should have_many(:images)
    end
  end

  
  describe "new project" do 


    it "is invalid without name" do 
      @project.name = nil
      @project.should be_invalid
    end
  
    it "is invalid without date" do
      @project.date = nil
      @project.should be_invalid
    end
 
    it "is invalid without info" do
      @project.info = nil
      @project.should be_invalid
    end
  end
      

end
