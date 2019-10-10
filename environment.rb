require_relative './player'
require_relative './team'
require_relative './coach'
require 'pry'

chiefs = Team.new "Chiefs", "Bill"
basic = Team.new "Who Cares", "Bob"

randall = Player.new "Randall", chiefs
kevin = Player.new "Kevin", chiefs
yamby = Player.new "Yamby", chiefs
joe = Player.new "Joe", basic
tom = Player.new "Tom", basic

bill = Coach.new "Bill", "Head", chiefs
julie = Coach.new "Julie", "Offensive", chiefs
mambo = Coach.new "Mambo", "Defensive", chiefs
bob = Coach.new "Bob", "Head", basic
jerry = Coach.new "Jerry", "Offensive", basic
matt = Coach.new "Matt", "Defensive", basic

binding.pry