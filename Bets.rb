require './blackjack_v4.rb'


class Bets

	def initialize
		@chips = 100
		@bet = 5   									#array
	end

	def sit_at_table
		while true == true
			show_balance
			gameA = Single_Hand.new
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

