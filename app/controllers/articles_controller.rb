class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  

  def show
    # byebug
    # this allows us to look at the params in the server console and to check for any bugs
    # @article = Article.find(params[:id])
    # this linne of code is the correct way to look for the articles inside of the database table
    # make sure to do the same lines of code from the rails console but to add an "@" before the variable to initialize it and to put 
    # params with the square brackets and the id attribute with the semicolon in front
  end

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    # render plain: params[:article]
    # this renders it to be displayed on the articles browser screen
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to article_path(@article)
      # you can use the shorter path "redirect_to @article"
    else
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end