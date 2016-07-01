require('rspec')
require('word_count')

describe('String#word_count') do
  it('takes a word and a string and displays a count of the number of times that word shows up' )do
    expect('jack'.word_count('jill')).to(eq(0))
  end
  it('takes a word and a string and displays a count of the number of times that word shows up' )do
    expect('jack'.word_count('jack')).to(eq(1))
  end
end
