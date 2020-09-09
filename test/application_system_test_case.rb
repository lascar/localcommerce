require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.server = :webrick
  driven_by :selenium, using: :headless_firefox, screen_size: [1400, 1400]
end
