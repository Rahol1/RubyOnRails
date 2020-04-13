require "rails_helper"

RSpec.describe "articles/edit" do
  it "Edit article" do
    assign(:article, Article.create(title: "slicer", description: "slicer description"))

    render 

    response.body.should match(/slicer/)
    response.body.should match(/slicer description/)
  end
end