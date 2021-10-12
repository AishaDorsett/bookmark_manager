require 'pg'

class Bookmark
  def self.display_bookmarks
    connection = PG.connect(dbname: 'BookmarkManager')
    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
  end
end
