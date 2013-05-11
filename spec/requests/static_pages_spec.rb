require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Taskr'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Taskr')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "Taskr App | Home")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "Taskr App | About")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', text: "Contact Us")
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', text: "Taskr App | Contact")
    end
  end
end
