require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

# get('/result') do
#   @anagrams = params.fetch('user_word').anagrams(params.fetch('anagrams'))
#   erb(:result)
# end
