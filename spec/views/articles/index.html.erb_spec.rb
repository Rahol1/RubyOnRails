require "rails_helper"

RSpec.describe "articles/index" do
  it "displays all the articles" do
    assign(:articles, [
      Article.create!(:title=> 'abc',:description => 'abc desc'),
      Article.create!(:title=> 'xyz',:description => 'xyz desc'),
      Article.create!(:title=> 'abcdef',:description => 'abcdef desc')
    ])

    render

    expect(rendered).to match /abc desc/
    expect(rendered).to match /xyz desc/
    expect(rendered).to match /abcdef desc/
  end
end