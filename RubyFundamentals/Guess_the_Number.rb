def guess_number guess
    number = 25
    if guess == number
        return "your guess was right!"
    else
        if guess > number
            return "your guess was too high!"
        else
            return "your guess was too low!"
        end
    end
end 
puts guess_number 100

