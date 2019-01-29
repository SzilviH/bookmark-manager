require 'bookmarks'

describe Bookmarks do

  describe '.all' do
    it 'returns the list of bookmarks' do
      bookmarks = Bookmarks.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end

  end

end
