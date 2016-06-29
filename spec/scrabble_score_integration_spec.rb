require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user word entry and returns an integer score') do
    visit('/')
    fill_in('word', :with => 'dummy')
    click_button('Scrabble')
    expect(page).to have_content("13")
save_and_open_page
  end
end
