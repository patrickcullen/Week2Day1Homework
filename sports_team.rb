class SportsTeam

  attr_reader :team_name, :team_players, :team_coach
  attr_writer :team_name, :team_players, :team_coach

  def initialize(team_name, team_players, team_coach)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
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
