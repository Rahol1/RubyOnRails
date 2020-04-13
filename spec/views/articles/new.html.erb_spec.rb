require "rails_helper"

RSpec.describe "articles/new" do
  it "creating a article" do
    assign(:article, Article.create(title: "slicer", description: "slicer description"))
    render
    response.body.should match(/slicer/)
    response.body.should match(/slicer description/)
  end
end



