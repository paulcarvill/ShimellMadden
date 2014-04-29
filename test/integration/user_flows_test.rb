require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  
  fixtures :items, :collections, :projects

  test "go to homepage and get 10 random items" do
    get "/"

    assert_response :success
    assert assigns(:items)

    assert_equal(10, assigns(:items).length)

  end

  test "go to collections page and get paginated items" do
    get "/collections"

    assert_response :success
    assert assigns(:collections)

    assert_equal(2, assigns(:collections).length)

  end

  test "go to projects page and get paginated items" do
    get "/projects"

    assert_response :success
    assert assigns(:projects)

    assert_equal(2, assigns(:projects).length)

  end

end
