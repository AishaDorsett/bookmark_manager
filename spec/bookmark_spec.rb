require "bookmark"

describe Bookmark do
  describe "display_bookmarks" do
    it "displays all bookmarks" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.github.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
      
      bookmarks = Bookmark.display_bookmarks
    
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.github.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end
end
