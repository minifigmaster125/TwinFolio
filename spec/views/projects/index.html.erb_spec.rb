require 'spec_helper'

describe "projects/index" do
  before(:each) do
    @project = FactoryGirl.build(:project)
  end

  it "renders a list of projects" do
    render
    rendered.should conatain("Sample Project")
  end
end
