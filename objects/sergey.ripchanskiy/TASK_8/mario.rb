# Mario game class
class Mario
  USER_PARTS = {
    user_body: 4,
    user_top_bottom: 2
  }.freeze

  def initialize
    @steps = 0
  end

  def repeat(text, quantity)
    quantity.times do print text end
  end

  def end_game?
    @steps > 35
  end

  def final_stage?
    @steps >= 30
  end

  def step
    @space_before_user = 5 + @steps
    @space_before_user_body = 4 + @steps
    @space_to_pyramid = 80 - @steps
    @bu_space = @space_before_user + USER_PARTS[:user_top_bottom]
    @bb_space = @space_before_user_body + USER_PARTS[:user_body]

    100.times do print '#' end
    puts ''
    repeat(' ', 100) unless final_stage?
    repeat(' ', 80) + repeat('#', 3) if final_stage?
    puts ''
    repeat(' ', 100) unless final_stage?
    repeat(' ', 80) + repeat('#', 3) if final_stage?
    puts ''
    repeat(' ', 100) unless final_stage?
    repeat(' ', 82) + repeat('#', 1) if final_stage?
    puts ''
    repeat(' ', @steps) + repeat(' ', @space_to_pyramid) + repeat('#', 4)
    puts ''
    repeat(' ', @steps) + repeat(' ', @space_to_pyramid - 1) + repeat('#', 6)
    puts ''
    repeat(' ', @steps) + repeat(' ', @space_to_pyramid - 2) + repeat('#', 8)
    puts ''
    repeat(' ', @steps) + repeat(' ', @space_before_user) + repeat('#', USER_PARTS[:user_top_bottom]) + repeat(' ', @space_to_pyramid - 3 - @bu_space) + repeat('#', 10)
    puts ''
    repeat(' ', @steps) + repeat(' ', @space_before_user_body) + repeat('#', USER_PARTS[:user_body]) + repeat(' ', @space_to_pyramid - 4 - @bb_space) + repeat('#', 12)
    puts ''
    repeat(' ', @steps) + repeat(' ', @space_before_user) + repeat('#', USER_PARTS[:user_top_bottom]) + repeat(' ', @space_to_pyramid - 5 - @bu_space) + repeat('#', 14)
    puts ''
    100.times do print '#' end
    puts ''
    @steps += 10
  end
end
