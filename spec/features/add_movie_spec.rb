require 'rails_helper'

describe "the add a movie process" do
  it "adds a new movie" do
    visit movies_path
    click_link 'Add a New Movie'
    fill_in 'Name', :with => 'The Wicker Man'
    click_on 'Create Movie'
    expect(page).to have_content 'Movies'
  end

  it "gives error when no name is entered" do
    visit new_movie_path
    click_on 'Create Movie'
    expect(page).to have_content 'errors'
  end
end
