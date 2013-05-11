require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Taskr'" do
      visit '/static_pages/home'
      page.should have_content('Taskr')
    end
  end
end
