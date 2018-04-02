# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def find_length(number)

  length = 0
  dividend = 1

  while number / dividend != 0
    length += 1
    dividend *= 10
  end

  return length
end


def is_palindrome(number)

  return false if number.nil?
  return false if number < 0

  length = find_length(number)

  divisor = 10 ** length
  iteration = 0

  while iteration < length / 2

    top = ( number / ( divisor / 10) ) - ( ( number / divisor ) * 10 )
    bottom = number - (( number / 10 ) * 10 )

    return false if top != bottom

    iteration += 1
    divisor /= 100
    number /= 10
  end

  return true

end
