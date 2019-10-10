class Player
    
    attr_reader :name, :team
    @@all = []

    def initialize name, team
        @name = name
        @team = team
        @@all << self
    end

    def self.all
        @@all
    end

    def what_team
        @@all.map do |player|
           if self.name == player.name
            return self.team
           end 
        end
    end

    def coaches
        coach_array = Coach.all.map do |coach|
            if self.team == coach.team
                coach.name
            end
        end
        coach_array.compact
    end
    
    def coaches_hash
        coaches_hash = {}
        Coach.all.map do |coach|
            if self.team == coach.team
                coach_array[coach.name] = coach.status
            end
        end
        coaches_hash
    end

end