require 'spec_helper'

describe "Welcomes" do

  describe "Home page" do

    it "has the title 'Home'" do
	visit '/welcome/index'
	expect(page).to have_title('Home')
    end
  end
end
