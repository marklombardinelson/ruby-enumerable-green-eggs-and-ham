class GreenEggsAndHam
  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    @words = @text.split(/[ .!?,\n]/).reject { |word| word.empty? }
  end

  def word_count
    @words.count
  end

  def sorted_unique_words
    downcase_words = @words.map { |word| word.downcase }
    downcase_unique_words = downcase_words.uniq
    sorted_words = downcase_unique_words.sort
  end

  def number_of_words_shorter_than(number)
    @words.count { |word| word.length < number }
  end

  def longest_word
    @words.max { |word| word.length}
  end

  def stanzas
    p @text.split("\n\n")
  end

  # def lines
  #  @text.split("\n").reject { |line| line.empty?}
  # end

  # def frequency_of_unique_words
  #  frequencies =  {}
  #    frequency = @words.count { |word| word.downcase == unique_word }
  #    frequencies[unique_word] = frequency
  # end
  # frequencies
  # end
end
