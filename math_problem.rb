class Math_problem 

  def rand_num
    rand(1..20)
  end

  def rand_operator
    [:*, :-, :+].sample
  end

  def question
    left = rand_num
    operator = rand_operator
    right = rand_num
    @question = left.send(operator, right)
    @question_string = "#{left} #{operator} #{right}"
  end

  def answer
    answer = @question
  end



end