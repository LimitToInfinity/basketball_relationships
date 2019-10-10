class Coach
    
    attr_reader :name, :status, :team
    @@all = []
    
    def initialize name, status, team
        @name = name
        @status = status
        @team = team
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.coach_hash
    #     hash = {}
    #     @@all.map do |team|
    #         hash[coach.team] = [coach.status]
    # end

end