require('rspec')
require('word_count')

describe('String#word_count') do
  it('takes a word and another word and displays a count of the number of times that word shows up' )do
    expect('jack'.word_count('jill')).to(eq(0))
  end
  it('takes a word and the same word and displays a count of the number of times that word shows up' )do
    expect('jack'.word_count('jack')).to(eq(1))
  end
  it('takes a word and a string of words and displays a count of the number of times that word shows up' )do
    expect('jack'.word_count('jack jill')).to(eq(1))
  end
  it('takes a word and a string of words and displays a count of the number of times that word shows up' )do
    expect('peck'.word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq(2))
  end
end
