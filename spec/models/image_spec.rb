require 'spec_helper'

describe Image do

  before(:each) do
    @image = FactoryGirl.build(:image)
  end

  it "belongs to a Project" do
    @image.should belong_to(:project)
  end   
  
  it "has an attached file" do
    @image.should have_attached_file(:photo)
  end

  it "is invalid without project" do
    @image.project_id = nil
    @image.should be_invalid
  end
end

