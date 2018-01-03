require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  attr_reader :hiking

  def setup
    @hiking = Activity.new("hiking", {name: ["rob", "greg"], cost: [20, 30]})

  end

  def test_activity_class_exist
    assert_instance_of Activity, hiking
  end

  def test_Activity_class_has_a_name
    assert_equal "hiking", hiking.activity
  end

  def test_activity_returns_empty_hash
    hike = Activity.new("hiking")
    empty = {}
    assert_equal empty, hike.participants
  end

  def test_names_of_participants_are_returned
    names = ["rob", "greg"]
    assert_equal names, hiking.names
  end

  def test_participants_has_a_name_and_an_amount
    participant_hash = {name: "rob", cost: 20}
    activity = Activity.new("hiking", participant_hash)

    assert_equal participant_hash, activity.participants
  end

  def test_can_add_participants
    hiking.add_participant("sal", 70)
    assert_equal ["rob", "greg", "sal"], hiking.names
    assert_equal [20, 30, 70], hiking.bills
    assert_equal 120, hiking.total_cost
  end

end










