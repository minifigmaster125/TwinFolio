require 'spec_helper'

describe Image do

  before(:each) do
    @image = FactoryGirl.build(:image)
  end

  it "belongs to a Project" do
    @image.should belong_to(:project)
  end   
 
  it "belongs to a Musing" do
    @image.should belong_to(:musing)
  end
  
  it "has an attached file" do
    @image.should have_attached_file(:photo)
  end

end

