require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_activity_class_exist
    assert_instance_of Activity, Activity.new("Hiking")
  end

  def test_Activity_class_has_a_name
    activity = Activity.new("Hiking")

    assert_equal "Hiking", activity.name
  end

  def test_participants_returns_hash
    activity = Activity.new("Hiking")
    empty_hash = {}
    assert_equal empty_hash, activity.participants
  end

  def method_name
    
  end


end
