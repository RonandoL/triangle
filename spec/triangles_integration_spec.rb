require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Determine what type of triangle', {:type => :feature}) do

  it('accepts input from user, spits out a triangle type') do
    visit('/')
    fill_in('side_a', :with => '3')
    fill_in('side_b', :with => '3')
    fill_in('side_c', :with => '5')
    click_button('Go!')
    expect(page).to have_content("Isosceles")
  end

end
