require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  #driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: { url: "http://chrome:4444/wd/hub" }

  def setup
    host! "http://#{IPSocket.getaddress('web')}:3000"

    super
  end
end
