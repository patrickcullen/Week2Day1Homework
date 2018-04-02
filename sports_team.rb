class SportsTeam

  attr_reader :team_name, :team_players, :team_coach, :team_points
  attr_writer :team_name, :team_players, :team_coach, :team_points

  def initialize(team_name, team_players, team_coach, team_points)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
    @team_points = team_points
  end

  def add_player(new_player)
    @team_players.push(new_player)
  end

  def check_player(player_name)
    for player in @team_players
      if player == player_name
        return true
      end
    end
    return false
  end

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

  # def team_name()
  #   return @team_name
  # end
  #
  # def team_players()
  #   return @team_players
  # end
  #
  # def team_coach
  #   return @team_coach
  # end
  #
  # def set_coach_name(new_name)
  #   @team_coach = new_name
  # end



end
