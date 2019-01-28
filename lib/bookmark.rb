class Bookmark

  def initialize
    @bookmarks = ["http://github.com", "www.google.com" ]
  end

  def list_bookmarks
    @bookmarks.join(", ")
  end
end
