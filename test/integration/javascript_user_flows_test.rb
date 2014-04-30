require 'test_helper'

class JavascriptUserFlowsTest < ActionDispatch::IntegrationTest

  setup do
    Capybara.current_driver = Capybara.javascript_driver # :selenium by default
  end

  test "backbone navigation is in place" do
    visit '/'
    page.must_have_content('Backbone listing items')
  end
end