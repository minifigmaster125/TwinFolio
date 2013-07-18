require 'spec_helper'

describe "Welcomes" do

  describe "Home page" do

    it "has the title 'Home'" do
	visit '/welcome/index'
	expect(page).to have_title('Home')
    end
  end

  describe "About page" do

    it "has the title 'About'" do
      visit '/about'
      expect(page).to have_title('About')
    end
  end

  describe "Joraaver page" do
    it "has the title 'Joraaver'" do
      visit '/Joraaver'
      expect(page).to have_title('Joraaver')
    end
  end
end
