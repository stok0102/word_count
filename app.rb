require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @count = params.fetch('user_word').word_count(params.fetch('user_string'))
  erb(:result)
end
