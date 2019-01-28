feature 'Load bookmarks' do
  scenario 'load on home page' do
    visit '/'
    expect(page).to have_content "Bookmarks"
  end
end 
