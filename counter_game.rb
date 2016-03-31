=begin 

10 friends are sitting in a circle around a table and decide to play a new game. In it, they count up through the numbers from 1 to 100. The first person says "1", the second says "2" and so on... but with a few catches:

Whenever the number is divisible by 7, they switch directions. So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".

Whenever the number is divisible by 11, they skip the next person for the following number. For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).

Your job is to code a program which outputs each number and which person said it. Use it to show that player 1 will say the number "100".

###############

My initial Pseudo Code:

PROGRAM CounterGame

  PlayerNumber = (1:10)
  Direction forward = true
  Skip = False
  Step = 1
  N = 1
        
    WHILE (True) DO
      IF N == 100:
        BREAK LOOP
      
      IF N / 7 returns no remainder THEN
        Direction forward = false

      IF N / 11 returns no remainder THEN
        Skip = True
          IF Skip:
            Step = 2
      
      
      If Direction forward = true THEN
        PlayerNumber = PlayerNumber + step
      ELSE
        PlayerNumber = PlayerNumber - step


      IF PlayerNumber  = 10 AND
        IF Direction forward = true THEN
          NEXT PlayerNumber  = 1
      IF PlayerNumber  = 1 AND
        IF Direction forward = false THEN
          NEXT PlayerNumber  = 10

      N = N + 1
    END

  IF N == 100 THEN
  Print = PlayerNumber
END

=end

def counter_game(players, final_number)

direction_forward = true
count = 0
step = 1
skip = false
current_player = 1

  while count <= final_number
    if count == final_number
      return "Player no.#{current_player} said number #{count}!"
    end

    # skip if count is divisable by 11
    skip == true if count % 11 == 0
      if skip
        step = 2
      end

    # change direction if count is divisable by 7
    direction_forward == false if count % 7 == 0
    
    # direction flow control
    if direction_forward
      current_player += step
    else
      current_player -= step
    end

    count += 1

    # condition to keep number of players within the limit
    if current_player > players && direction_forward
      current_player = current_player - players
    elsif current_player < 1 && direction_forward == false
      current_player = current_player + players
    end
  end
end

# check if method works

puts counter_game(10, 100)
puts counter_game(20, 345)
puts counter_game(30, 1999)





