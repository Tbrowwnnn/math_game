class Player 

  attr_accessor :name
  
  def initialize(n)
    @name = n
    @lives = 3
  end

  def set_name=(name)
    @name = name
  end

  def get_name
    @name
  end

  def lives
    @lives
  end

  def reduce_lives
    @lives -= 1
  end

  def increase_score
    @score += 1
  end
end








