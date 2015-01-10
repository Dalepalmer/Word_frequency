require("rspec")
require("word_frequency")
require("pry")

describe ("String#word_frequency") do
  it("Tests the counting function for the word dog is in a give sentence") do
    expect(("dog").word_freq("A yellow dog dog dog dog")).to(eq(4))
  end

  it ("Tests the counting function of sentences that are capitalized") do
    expect(("blue").word_freq("Blue bLue blUe bluE BLue bLUe blUE BLUe bLUE")).to(eq(9))
  end
  it ("Tests ability to understand capitalized words as an input") do
    expect(("BLUE").word_freq("blue")).to(eq(1))
  end
end
