class Game
  attr_reader :start


  def play
    questions = Math_problem.new
    puts "#{@player1.get_name}: What is #{questions.question}"
    answer = $stdin.gets.chomp.to_i
    if(answer === questions.answer)
      puts "Correct!"
      puts "#{@player1.get_name}: #{@player1.lives} vs #{@player2.get_name}: #{@player2.lives}"
    
    end

  end   

  def start
    puts "Welcome to the math game!"
    puts "Please enter your name for Player 1"

    print ">"
    name1 = $stdin.gets.chomp
    @player1 = Player.new(name1)

    puts "Thank you #{@player1.get_name}"
    puts "Please enter your name for Player 2"

    print ">"
    name2 = $stdin.gets.chomp
    @player2 = Player.new(name2)

    puts "Thank you #{@player2.get_name}"
    puts "This game is #{@player1.get_name} vs #{@player2.get_name}"
    puts "Let's begin!"

    if(@player1.lives > 0 && @player2.lives > 0)  
    play
    else 
      puts "Game Over"
    end

  end
end


