require 'bookmarks'

describe Bookmarks do

  describe '.all' do
    it 'returns the list of bookmarks' do
      bookmarks = Bookmarks.all

      expect(bookmarks).to include(["http://www.makersacademy.com", "makers"])
      expect(bookmarks).to include(["http://destroyallsoftware.com", "destroy"])
      expect(bookmarks).to include(["http://www.google.com", "google"])
    end
  end

  describe '.add' do
    it 'adds a bookmark to the database' do
      Bookmarks.add('http://www.whateverweusedbeforecodewars.com', 'whatever')

      expect(Bookmarks.all).to include(['http://www.whateverweusedbeforecodewars.com', 'whatever'])
    end
  end

end
