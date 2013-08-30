require 'spec_helper'

describe Comment do

  before(:each) do
    @comment = FactoryGirl.build(:comment)
  end

  describe "new comment" do 


    it "is invalid without name" do 
      @comment.name = nil
      @comment.should be_invalid
    end
  
    it "is invalid without email" do
      @comment.email = nil
      @comment.should be_invalid
    end
 
    it "is invalid without comment" do
      @comment.comment = nil
      @comment.should be_invalid
    end
  end
end
