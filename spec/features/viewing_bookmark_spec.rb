# feature "Bookmark" do
#   scenario "view bookmark index page" do
#     visit ("/")
#     expect(page).to have_content "Bookmark Manager"
#   end
feature "Viewing bookmarks" do
  scenario "can view the bookmarks" do
    visit("/bookmarks")
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.github.com"
    expect(page).to have_content "http://www.google.com"
  end
end
