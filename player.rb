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

  def loser
    @loser = false
    if(lives === 0)
      @loser = true
    end
  end

  def set_current=(isit)
    @current = isit
  end

  def current
    @current
  end
end








