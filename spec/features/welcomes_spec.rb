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

    it "links to Musings index" do
      visit '/Joraaver'
      click_link('musings_top_link')
      expect(page).to have_title('Musings')
    end

    it "links to 'Projects'" do
      visit '/Joraaver'
      click_link('middle_name') 
      expect(page).to have_title('Projects')
    end

    it "has nav link to 'Projects'" do
      visit '/Joraaver'
      click_link('nav_projects') 
      expect(page).to have_title('Projects')
    end
  end

  describe "Suchaaver page" do
    it "has the title 'Suchaaver'" do
      visit '/Suchaaver'
      expect(page).to have_title('Suchaaver')
    end
    
    it "links to Musings index" do 
      visit '/Suchaaver'
      click_link('musings_top_link')
      expect(page).to have_title('Musings')
    end

    it "has back arrow link to home" do
      visit '/Suchaaver'
      click_link('home_arrow')
      expect(page).to have_title('Home')
    end

    it "has nav link to Projects index" do
      visit '/Suchaaver'
      click_link('Projects')
      expect(page).to have_title('Projects')
    end
    
    it "links to 'Projects'" do
      visit '/Suchaaver'
      click_link('Works') 
      expect(page).to have_title('Projects')
    end
      
  end

  describe "Projects Index" do
    it "has the title 'Projects'" do
      visit '/projects'
      expect(page).to have_title('Projects')
    end
  end

    



  
end
