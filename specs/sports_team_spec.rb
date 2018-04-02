require('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Cessnock Albion", ["Anna Goalkeeper", "Louise Fullback", "Julia Midfield"], "Malcolm Coach", 0)
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

  def test_team_points
    assert_equal(0, @team.team_points)
  end

  def test_set_coach_name
    @team.team_coach = "Robert Coach"
    assert_equal("Robert Coach", @team.team_coach)
  end

  def test_add_player
    @team.add_player("Peter Substitute")
    assert_equal(["Anna Goalkeeper", "Louise Fullback", "Julia Midfield", "Peter Substitute"], @team.team_players)
  end

  def test_check_player__present
    player_present = @team.check_player("Louise Fullback")
    assert_equal(true, player_present)
  end

  def test_check_player__absent
    player_present = @team.check_player("Big Bren")
    assert_equal(false, player_present)
  end

  def test_maintain_points__win
    @team.maintain_points("w")
    assert_equal(3, @team.team_points)
  end

  def test_maintain_points__draw
    @team.maintain_points("d")
    assert_equal(1, @team.team_points)
  end

end
