class String
  define_method(:word_freq) do |input|
    score = 0
    word = self.downcase
    sentence = input.downcase.split()
    sentence.each() do |key|
      if key.==(word)
        score = score.+(1)
      end
    end
    score
  end
end
