require "application_system_test_case"

class WelcomesTest < ApplicationSystemTestCase
  test "visiting the root" do
    visit root_url

    assert_title 'Commercio local'
    assert_selector "h1", text: "Bienvenido/a"
  end
end
