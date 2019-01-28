class Bookmarks

  attr_reader :bookmarks

  def initialize
    @bookmarks = ["http://github.com", "www.google.com" ]
  end

  def list_bookmarks
    @bookmarks.join(", ")
  end
end
