require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Taskr'" do
      visit root_path
      page.should have_selector('h1', text: "Taskr")
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title', text: "Taskr App")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', text: "| Home")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', text: "About Us")
    end

    it "should have the right title" do
      visit about_path
      page.should have_selector('title', text: "Taskr App | About")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', text: "Contact Us")
    end

    it "should have the right title" do
      visit contact_path
      page.should have_selector('title', text: "Taskr App | Contact")
    end
  end
end
