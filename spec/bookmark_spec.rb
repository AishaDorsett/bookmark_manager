require "bookmark"

describe Bookmark do
  describe "display_bookmarks" do
    it "displays all bookmarks" do
      bookmarks = Bookmark.display_bookmarks
    
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.github.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end
end
