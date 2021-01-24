require 'rspec'

def query_hash(hash, key)
  hash.fetch(key)
end

describe 'Query Hash' do
  before do
    @hash = { name: 'Gango', email: 'gango@galisoft.com' }
  end

  it 'properly retrieves a value giveb a key' do
    expect(query_hash @hash, :name).to eql('Gango')
  end

  it "throws an error when a key is requested that doesn't exist in the hash" do
    expect { query_hash @hash, :username }.to raise_error(KeyError)
  end
end
