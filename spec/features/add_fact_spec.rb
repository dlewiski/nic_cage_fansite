require 'rails_helper'

describe "the add a fact process" do
  it "adds a new fact" do
    visit facts_path
    click_link 'Add a New Fact'
    fill_in 'Title', :with => 'Nicholas Cage is the man!'
    click_on 'Create Fact'
    expect(page).to have_content 'Facts'
  end

  it "gives error when no name is entered" do
    visit new_fact_path
    click_on 'Create Fact'
    expect(page).to have_content 'errors'
  end
end
