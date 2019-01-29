feature 'Load bookmarks' do
  scenario 'load on home page' do
    visit '/'
    expect(page).to have_content "Bookmarks"
  end
end

feature 'View bookmarks' do
  scenario 'view bookmarks on bookmarks page' do
    visit '/bookmarks'
    expect(page).to have_content "makers"
    expect(page).to have_content "google"
  end
end

feature '#.add' do
  scenario 'add new bookmarks' do
    visit '/'
    fill_in 'bookmark_name', with: 'http://www.codewars.com'
    fill_in 'title', with: 'codewars'
    click_button 'Add Bookmark'
    expect(page).to have_content "codewars"
  end
end
