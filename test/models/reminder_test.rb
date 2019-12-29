require 'test_helper'

class ReminderTest < ActiveSupport::TestCase
  def setup
    @reminder = Reminder.create!(descr: 'Buy milk', trigger_on: 2.days.from_now)
  end

  test "default priority = 0" do
    assert_equal(0, @reminder.priority)
  end

  test "basic fixtures setup" do
    fixture = reminders(:buy_milk)

    assert_equal(fixture.descr, @reminder.descr)
    assert_equal('Buy bread', reminders(:buy_bread).descr)
  end
end
