require 'minitest/autorun'
require_relative '../../app/services/character_counter_service'

class CharacterCounterServiceTest < Minitest::Test
  def test_character_counter
    character_counter = CharacterCounterService.new
    assert character_counter

    count = character_counter.count("Homer")
    assert_equal 5, count
  end
end