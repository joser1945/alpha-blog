class ArticlesController < ApplicationController
    def show
        byebug
        # this allows us to look at the params in the server console and to check for any bugs
        @article = Article.find(params[:id])
        # this linne of code is the correct way to look for the articles inside of the database table
        # make sure to do the same lines of code from the rails console but to add an "@" before the variable to initialize it and to put 
        # params with the square brackets and the id attribute with the semicolon in front
    end
end