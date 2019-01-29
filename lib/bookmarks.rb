require 'pg'

class Bookmarks

  def self.all
    setup
    result = @conn.exec("SELECT * FROM bookmarks;")
    result.map {|bookmark| [bookmark['url'],bookmark['title']]}
  end

  def self.add(bookmark, title)
    setup
    @conn.exec("INSERT INTO bookmarks (url,title) VALUES ('#{bookmark}','#{title}');")
  end

  private

  def self.setup
    if ENV['ENVIRONMENT'] == 'test'
      @conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      @conn = PG.connect(dbname: 'bookmark_manager')
    end
  end



end
