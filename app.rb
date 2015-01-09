require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency')


get('/freq_form') do
  erb(:freq_form)
end

get('/word_output') do
  @output = params.fetch('word').word_freq(params.fetch('paragraph'))
  @word = params.fetch('word')
  @score = @output
  erb(:word_output)
end
