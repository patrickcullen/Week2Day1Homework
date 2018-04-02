require('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Cessnock Albion", ["Anna Goalkeeper", "Louise Fullback", "Julia Midfield"], "Malcolm Coach")
  end

  def test_team_name
    assert_equal("Cessnock Albion", @team.team_name)
  end

  def test_team_players
    assert_equal(["Anna Goalkeeper", "Louise Fullback", "Julia Midfield"], @team.team_players)
  end

  def test_team_coach
    assert_equal("Malcolm Coach", @team.team_coach)
  end

  def test_set_coach_name
    @team.set_coach_name("Robert Coach")
    assert_equal("Robert Coach", @team.team_coach)
  end
end
