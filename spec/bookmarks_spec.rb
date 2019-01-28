require 'bookmarks'

describe Bookmarks do
  it 'returns the list of bookmarks' do
     expect(subject.list_bookmarks).to include "github.com"
  end
end
