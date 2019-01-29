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

  describe '.add' do
    it 'adds a bookmark to the database' do
      Bookmarks.add('http://www.whateverweusedbeforecodewars.com')

      expect(Bookmarks.all).to include('http://www.whateverweusedbeforecodewars.com')
    end
  end

end
