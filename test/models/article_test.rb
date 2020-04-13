require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "title and description validation" do 
    assert Article.new(title: "abc", description: 'abc desc').save
  end
end
