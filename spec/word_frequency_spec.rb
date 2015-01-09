require("rspec")
require("word_frequency")
require("pry")

describe ("String#word_frequency") do
  it("counts how many times dog is in a give sentence") do
    expect(("dog").word_freq("A yellow dog dog dog dog")).to(eq(4))
  end

  it ("counts words that are capitalized") do
    expect(("dog").word_freq("DOG dog Dog")).to(eq(3))
  end
end
