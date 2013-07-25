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

    it "links the left arrow to Joraaver" do
      visit about_path
      click_link('left_arrow')
      expect(page).to have_title('Joraaver')
    end
    
    it "links the right arrow to Suchaaver" do
      visit about_path
      click_link('right_arrow') 
      expect(page).to have_title('Suchaaver')
    end
  end

  describe "Joraaver page" do
    it "has the title 'Joraaver'" do
      visit '/Joraaver'
      expect(page).to have_title('Joraaver')
    end
  end

  describe "Suchaaver page" do
    it "has the title 'Suchaaver'" do
      visit '/Suchaaver'
      expect(page).to have_title('Suchaaver')
    end
  end

  
end
