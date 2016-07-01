require('rspec')
require('word_count')

describe('String#word_count') do
  it('will return 0 if given non matching words' )do
    expect('jack'.word_count('jill')).to(eq(0))
  end
  it('will return 1 if given two matching words' )do
    expect('jack'.word_count('jack')).to(eq(1))
  end
  it('will return 1 if given a word and a string containing that word' )do
    expect('jack'.word_count('jack jill')).to(eq(1))
  end
  it('will return 2 if given a word and a string containing 2 instances of that word' )do
    expect('peck'.word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq(2))
  end
end
