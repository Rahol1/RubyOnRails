require "rails_helper"
RSpec.describe "articles/form" do
    
    
    describe "with valid information of article" do
        before do
          fill_in 'title', with: "Example"
          fill_in 'description', with: "desc of example"
          click_button Create Article
        end
        it "it should submit the form successfully" do
            should have_content('Article was successfully created.')
          end
    
        
    end
end