feature 'Load bookmarks' do
  scenario 'load on home page' do
    visit '/'
    expect(page).to have_content "Bookmarks"
  end
end

feature 'View bookmarks' do
  scenario 'view bookmarks on bookmarks page' do
    visit '/bookmarks'
    expect(page).to have_content "makersacademy.com"
    expect(page).to have_content "www.google.com"
  end
end
