require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  setup

  test "should get root" do 
    get root_path
    assert_response :success
    
  end
  
  test "should get home" do
    get static_pages_home_path
    assert_response :success
    assert_select "title", "Home | #{@title}"
  end

  test "should get help" do
    get static_pages_help_path
    assert_response :success
    assert_select "title", "Help | #{@title}"
  end

  test "should get about" do
    get static_pages_about_path
    assert_response :success
    assert_select "title", "About | #{@title}"
  end
  
  test "should get contact" do
    get static_pages_contact_path
    assert_response :success
    assert_select "title", "Contact | #{@title}"
  end
  
  private
  def setup
    @title =  "Ruby on Rails Tutorial Sample App"
  end
end
