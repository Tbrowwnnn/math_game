class Game
  attr_reader :start, :question_number, :winner

  def initialize()
    @question_number = 1
  end

  def current_player

    if(question_number % 2 === 1)
      current_player = @player1
      
    else
    current_player = @player2
  end
end

def question_number
  @question_number
end

def set_question_number
  @question_number += 1
end


  def play
    questions = Math_problem.new

    puts "#{current_player.get_name}: What is #{questions.question}"
    answer = $stdin.gets.chomp.to_i

    if(answer === questions.answer)
      puts "#{current_player.get_name}: Correct!"
      puts "#{@player1.get_name}: #{@player1.lives}/3 vs #{@player2.get_name}: #{@player2.lives}/3"

    else(answer != questions.answer)
      puts "#{current_player.get_name}: Wrong! You suck at math!"
      current_player.reduce_lives
      puts "#{@player1.get_name}: #{@player1.lives}/3 vs #{@player2.get_name}: #{@player2.lives}/3"
    end
      if(@player1.lives > 0 && @player2.lives > 0)

        set_question_number
        
        puts "-----Next Turn-----"  
        play
        else 
          winner
          puts "#{@winner} is the winner with a score of #{@winner_score}/3"
          puts "----- Game Over ----"
      end  
  end   

  def winner
    if(@player1.lives === 0)
      @winner = @player2.get_name
      @winner_score = @player2.lives
    elsif(@player2.lives === 0)
      @winner = @player1.get_name
      @winner_score = @player1.lives
    end
  end

  def start
    puts "Welcome to the math game!"
    puts "Please enter your name for Player 1"

    print ">"
    name1 = $stdin.gets.chomp
    @player1 = Player.new(name1)
    @player1.set_current = true

    puts "Thank you #{@player1.get_name}"
    puts "Please enter your name for Player 2"

    print ">"
    name2 = $stdin.gets.chomp
    @player2 = Player.new(name2)
    @player2.set_current = false

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


