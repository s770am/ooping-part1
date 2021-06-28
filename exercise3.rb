class Player

    def initialize
        @gold_coins =0
        @health_points = 10
        @lives = 5
    end

def display
puts "gold_coins = #{@gold_coins} health_points = #{@health_points} lives = #{@lives}"
end

    def level_up
@lives += 1
    end

    def restart
self.initialize
    end

    def collect_treasure
@gold_coins += 5
#@gold_coins += 1
if @gold_coins % 10 == 0 
self.level_up
end
    end

    def do_battle
@health_points -= 5
#@health_points -= 1
if @health_points == 0 
    @health_points = 10
    @lives = 0
    if @lives == 0
        puts "you have died"
         self.restart
    end
end
    end


end

dovid = Player.new

# dovid.display
# dovid.do_battle
# dovid.collect_treasure
# dovid.display
# # dovid.do_battle
# dovid.collect_treasure
# dovid.display
# dovid.do_battle
# dovid.do_battle
# dovid.display
