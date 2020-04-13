require "rails_helper"

RSpec.describe "articles/show" do
  it "display Particular article" do
    assign(:article, Article.create(title: "slicer", description: "slicer description"))

    render 

    response.body.should match(/slicer/)
    response.body.should match(/slicer description/)
  end
end