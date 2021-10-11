feature 'Bookmark' do 
  scenario 'view bookmark index page' do 
    visit ('/')
    expect(page).to have_content 'Bookmarks'
  end
end