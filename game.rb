class Game
  attr_reader :start, :current_player 

  def play
    puts "Question 1: What is #{Math_problem.new.question}"
  end   

  def start
    puts "Welcome to the math game!"
    puts "Please enter your name for Player 1"

    print ">"
    name1 = $stdin.gets.chomp
    player1 = Player.new(name1)

    puts "Thank you #{player1.get_name}"
    puts "Please enter your name for Player 2"

    print ">"
    name2 = $stdin.gets.chomp
    player2 = Player.new(name2)

    puts "Thank you #{player2.get_name}"
    puts "This game will be #{player1.get_name} vs #{player2.get_name}"
    puts "Let's begin!"

    play

  end
end


