class SportsTeam

  attr_reader :team_name, :team_players, :team_coach, :team_points
  attr_writer :team_name, :team_players, :team_coach, :team_points

  def initialize(team_name, team_players, team_coach, team_points)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
    @team_points = team_points
  end

  # Add player to team players array

  def add_player(new_player)
    @team_players.push(new_player)
  end

  # Check if supplied name appears in players array

  def check_player(player_name)
    for player in @team_players
      if player == player_name
        return true
      end
    end
    return false
  end

  # Maintain points based on supplied result, "w" = 3, "d" = 1, "l" = 0

  def maintain_points(result)
    case result
    when "w"
      @team_points += 3
    when "d"
      @team_points += 1
    else
      @team_points += 0
    end
  end

end
