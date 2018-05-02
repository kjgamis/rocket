require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_new_rocket_exists
    skip
    assert(@rocket.name)
    assert(@rocket.colour)
    refute(@rocket.flying?)
  end

  def test_rocket_is_flying
    skip
    @rocket.lift_off

    assert(@rocket.flying?)
  end

  def test_rocket_has_landed
    skip
    @rocket.lift_off
    @rocket.land

    refute(@rocket.flying?)
  end

  def test_rocket_status_when_flying
    # skip
    @rocket.lift_off
    actual   = @rocket.status
    expected = "Rocket #{ @rocket.name } is flying through the sky!"

    assert_equal(actual, expected)
  end



  def test_new_rocket_personalized
    rocket = Rocket.new({ name: 'saggitarius', colour: 'red', flying: true })

    actual = rocket.status
    expected = "Rocket #{ rocket.name } is flying through the sky!"

    assert_equal(actual, expected)
  end

end
