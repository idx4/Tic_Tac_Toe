require_relative "board.rb"

class Terminal

	def rows(board_hash)

		empty=Hash.new

		board_hash.each do |key, value|
		empty[key] = value

	 		if empty[key] == ""
           	   empty[key] = " "
        	end                
        end
=begin
 The following code articulates the display,
 with top & bottom borders;
 with a1 in lower-left corner; and
 with c3 in upper-right corner:
=end


# print empty
showboard(empty)
check_for_wins(empty)
end

	def check_for_wins(empty)
		if (
			empty[:a1] == "X" &&
		    empty[:a2] == "X" &&
		   	empty[:a3] == "X"
		   	) == true

			win_for_X()

		elsif (
			   empty[:a1] == "X" &&
		       empty[:b1] == "X" &&
		   	   empty[:c1] == "X"
		   	  ) == true

			  win_for_X()

		elsif (
			   empty[:a3] == "X" &&
		       empty[:b3] == "X" &&
		   	   empty[:c3] == "X"
		   	  ) == true

			  win_for_X()

		elsif (
			   empty[:c3] == "X" &&
		       empty[:c2] == "X" &&
		   	   empty[:c1] == "X"
		   	  ) == true

			  win_for_X()

		elsif (
			   empty[:b3] == "X" &&
		       empty[:b2] == "X" &&
		   	   empty[:b1] == "X"
		   	  ) == true

			  win_for_X()

		elsif (
			   empty[:a1] == "X" &&
		       empty[:b2] == "X" &&
		   	   empty[:c3] == "X"
		   	  ) == true

			  win_for_X()

		elsif (
			   empty[:a3] == "X" &&
		       empty[:b2] == "X" &&
		   	   empty[:c1] == "X"
		   	  ) == true

			  win_for_X()

		elsif (
			   empty[:a2] == "X" &&
		       empty[:b2] == "X" &&
		   	   empty[:c2] == "X"
		   	  ) == true

			  win_for_X()

		elsif (
			    empty[:a1] == "O" &&
		        empty[:a2] == "O" &&
		   	    empty[:a3] == "O"
		   	   ) == true

			   win_for_O()

		elsif (
			   empty[:a1] == "O" &&
		       empty[:b1] == "O" &&
		   	   empty[:c1] == "O"
		   	  ) == true

			  win_for_O()

		elsif (
			   empty[:a3] == "O" &&
		       empty[:b3] == "O" &&
		   	   empty[:c3] == "O"
		   	  ) == true

			  win_for_O()

		elsif (
			   empty[:c3] == "O" &&
		       empty[:c2] == "O" &&
		   	   empty[:c1] == "O"
		   	  ) == true

			  win_for_O()

		elsif (
			   empty[:b3] == "O" &&
		       empty[:b2] == "O" &&
		   	   empty[:b1] == "O"
		   	  ) == true

			  win_for_O()

		elsif (
			   empty[:a1] == "O" &&
		       empty[:b2] == "O" &&
		   	   empty[:c3] == "O"
		   	  ) == true

			  win_for_O()

		elsif (
			   empty[:a3] == "O" &&
		       empty[:b2] == "O" &&
		   	   empty[:c1] == "O"
		   	  ) == true

			  win_for_O()

		elsif (
			   empty[:a2] == "O" &&
		       empty[:b2] == "O" &&
		   	   empty[:c2] == "O"
		   	  ) == true

			  win_for_O()																
		end
	end

		def win_for_X()
			puts""
			puts " X wins"
		end

		def win_for_O()
			puts""
			puts " O wins"
		end

	def showboard(empty)
	        puts ""
	        print "********"
	        puts ""
	        print " " + empty[:c1] + " " + empty[:c2] + " " + empty[:c3]
	        puts ""
	        print " " + empty[:b1] + " " + empty[:b2] + " " + empty[:b3]
	        puts ""
	        print " " + empty[:a1] + " " + empty[:a2] + " " + empty[:a3]
	        puts ""
	        puts ""
	        print "********"
	end

end