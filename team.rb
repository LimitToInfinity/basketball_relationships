class Team
    
    attr_reader :name, :coach
    @@all = []
    
    def initialize name, coach
        @name = name
        @coach = coach
        @@all << self
    end

    def self.all
        @@all
    end

    def players
        Player.all.select do |player|
            player.team == self
        end
    end

    # def coaches
    #     Coach.all.select do |coach|
    #         Player.all.map do |player|
    #             player.team == self.name
    #         end
    #     end
    # end

end