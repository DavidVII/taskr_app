require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_selector('h1', text: "Taskr") }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: "| Home") }
  end

  describe "About Page" do
    before { visit about_path }

    it { should have_selector('h1', text: "About Us") }
    it { should have_selector('title', text: full_title("About")) }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_selector('h1', text: "Contact Us") }
    it { should have_selector('title', text: full_title("Contact")) }
  end
end
