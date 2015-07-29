require 'spec_helper'

describe "blogs" do

  subject { page }

  describe "Home page" do

    before { visit root_path }

    it {should have_content('Demo')}
    it {should have_selector('h1', text: 'Hello')}
    it {should have_selector('title', text: full_title(''))}
    it {should_not have_selector('title', :text => '| Home')}
  end

  describe "About page" do
    before { visit about_path }
    it {should have_selector('title', text:  full_title('About Us'))}
    it {should have_content('About Us')}
    it {should have_selector('h1', text: 'About Us')}
    it {should have_content('about page')}
  end


  describe "Sign Up" do
    before { visit signup_path }
    it {should have_content('Sign Up')}
    it {should have_selector('h1', text: 'Sign Up')}
    it {should have_selector('title', text:  full_title('Sign Up'))}
  end

  it "should have the right link" do
    visit root_path
    click_link "About"
    page.should have_selector 'h1', text: 'About Us'
    click_link "Sign Up"
    page.should have_selector 'h1', text: 'Sign Up'

   end
 end

