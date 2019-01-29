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

feature '#.add' do
  scenario 'add new bookmarks' do
    visit '/'
    fill_in 'bookmark_name', with: 'http://www.codewars.com'
    click_button 'Add Bookmark'
    expect(page).to_not have_content "BACKTRACE"
    expect(page).to have_content "http://www.codewars.com"
  end
end
