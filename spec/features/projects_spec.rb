require 'spec_helper'

describe "Projects" do

    it "has the title 'Projects'" do
      visit projects_path
      page.should have_title("Projects")
    end

end
