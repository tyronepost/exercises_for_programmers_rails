require 'minitest/autorun'
require_relative '../../app/services/repository'

class RepositoryTest < Minitest::Test
  def test_repo
    repo = Repository.get_instance
    assert repo

    repo.cache = "Tyrone"
    assert_equal "Tyrone", repo.cache
  end
end