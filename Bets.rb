require './blackjack_v4.rb'


class Bets

	def initialize
		@chips = 100
		@bet = 5   									#array
	end

	def wager
			puts "What's your wager?"
			@bet = gets.chomp.to_i
			if @bet > @chips || @bet < 0
				puts "Not a valid wager.  Please re-bet:  "
				return wager
			else
			end
	end

	def sit_at_table
		while @chips > 0
			show_balance
			gameA = Single_Hand.new
			wager
			result = gameA.play_game
			update_balance(result)
		end
	end

	def update_balance(result)
		if result == "player"
			@chips+= @bet
		elsif result == "dealer"
			@chips-= @bet
		else
			@chips = @chips
		end
	end
	
	def show_balance
		3.times do puts "" end
		puts "$$$$$$$ Your new balance is #{@chips}"
	end

end

Matt = Bets.new
Matt.sit_at_table

