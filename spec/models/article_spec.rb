require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validation tests' do 
    it 'should save successfully' do 
      article = Article.new(title: "abc", description: 'abc desc').save
      expect(article).to eq(true)
    end

    it 'ensures title presence' do 
      article = Article.new( description: 'abc desc').save
      expect(article).to eq(false)
    end

    it 'ensures description prsence' do 
      article = Article.new(title: "abc").save
      expect(article).to eq(false)
    end
  end

  
end
