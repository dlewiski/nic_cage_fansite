require 'rails_helper'

describe "the add a news process" do
  it "adds more news" do
    visit news_index_path
    click_link 'Add More News'
    fill_in 'Title', :with => 'HE HAS LOST IT'
    click_on 'Create News'
    expect(page).to have_content 'News'
  end

  it "gives error when no name is entered" do
    visit new_news_path
    click_on 'Create News'
    expect(page).to have_content 'errors'
  end
end
