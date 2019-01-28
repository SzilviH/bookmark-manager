feature 'Load bookmarks' do
  scenario 'load on home page' do
    visit '/'
    expect(page).to have_content "Bookmarks"
  end
end

feature 'View bookmarks' do
  scenario 'view bookmarks on bookmarks page' do
    visit '/bookmarks'
    expect(page).to have_content "github.com, www.google.com"
  end
end
