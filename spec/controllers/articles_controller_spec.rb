require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
 let(:@article) {articles(title: "abc", description: 'abc desc')}

 before(:all) do
    @article = Article.create(title: 'abc', description: 'abc description')
 end



    context 'GET #index' do
        it 'returns a successful response' do
            get :index
            expect(response).to be_ok
        end
    end


    context 'GET #show' do
        it 'returns article data of the id provided' do 
            @article
            get :index, params: {id: @article.to_param}
            expect(response).to be_ok
            
        end 

    end



    describe '#create' do
        before(:all) do
        @articles_params = { title: "abc", description: 'abc desc' }
        end

        it 'creates Articles' do
            expect do
              post :create, params: { articles: @articles_params }
              expect(response.status).to change { Article.all.size }.by(1)
            end
        end


        it 'Update Article' do 
            expect do 
                put :update, params: { articles: @articles_params }
                expect(response.status).to be_ok
            end
        end
        

    describe 'DELETE #destroy' do
        it 'Delete articles' do
            expect do
                delete :destroy, params: { articles: @articles_params }
                expect(response.status).to change { Article.all.size }.by(-1)
                expect(response).to be_ok
            end
        end
    end
end



end


