require 'pg'

class Bookmarks

  def self.all
    setup
    result = @conn.exec("SELECT * FROM bookmarks;")
    result.map {|bookmark| bookmark['url']}
  end

  def self.add(bookmark)
    setup
    @conn.exec("INSERT INTO bookmarks (url) VALUES ('#{bookmark}');")
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
