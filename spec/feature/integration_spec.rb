require 'rails_helper'

RSpec.describe 'Creating a book with title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'J.K. Rowling'
	fill_in 'Price', with: '20'
	fill_in 'Publish date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with title and author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'J.K. Rowling'
	fill_in 'Price', with: '20'
	fill_in 'Publish date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
	expect(page).to have_content('J.K. Rowling')
  end
end

RSpec.describe 'Creating a book with title, author, and price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'J.K. Rowling'
	fill_in 'Price', with: '20'
	fill_in 'Publish date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
	expect(page).to have_content('J.K. Rowling')
	expect(page).to have_content('20')
  end
end

RSpec.describe 'Creating a book with title, author, price, and date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'J.K. Rowling'
	fill_in 'Price', with: '20'
	fill_in 'Publish date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
	expect(page).to have_content('J.K. Rowling')
	expect(page).to have_content('20')
	expect(page).to have_content('1997-06-26')
  end
end