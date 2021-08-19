class Phrase
    attr_reader :word_count

    def initialize(input)
      @word_count = input.scan(/\b[\w']+\b/)
        .reduce(Hash.new(0)) do |word_count, word|
          word_count[word.downcase] += 1
          word_count
        end
    end
  end