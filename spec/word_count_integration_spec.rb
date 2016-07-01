require('capybara/rspec')
require('launchy')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('gathers user word and string and returns number of instances of word in string') do
    visit('/')
    fill_in('user_word', :with => 'jack')
    fill_in('user_string', :with => 'jack and jill went up the hill to fetch a pail of water. jack fell down and broke his crown and jill came tumbling after')
    click_button('submit')
    expect(page).to have_content(2)
  end
end
