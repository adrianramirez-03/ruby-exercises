class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    splitStr = str.split(/(\W+)/) # Split on non-word characters (including punctuation)
    newStr = []

    splitStr.each do |word|
      if word =~ /\w/ # Check if word contains at least one letter (ignoring punctuation)
        if word[0] == word[0].upcase && word.length > 4
          newStr << "Marklar"
        elsif word.length > 4
          newStr << "marklar"
        else
          newStr << word
        end
      else
        newStr << word # Add punctuation as-is to newStr
      end
    end

    return newStr.join('')
  end


  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequenceo
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method

    fib = Array(0..nth-1)
    sum = 0

    first = 1
    second = 1

    for num in fib
      fib[num] = first
      temp = second
      second = first + second
      first = temp
    end

    fib.each do |x|
      if x%2 == 0
        sum = sum + x
      end
    end

    return sum

  end

end
