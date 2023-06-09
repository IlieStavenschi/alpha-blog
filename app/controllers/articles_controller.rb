class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  # This method finds the article with the ID specified in the params hash
  def show
  end
  
  # This method retrieves all articles from the database
  def index
    @articles = Article.all
  end

  # This method is empty and doesn't do anything
  def new
    @article = Article.new
  end

  def edit
  end

  # This method is used to create a new article by instantiating a new Article object
  # with the parameters from the request
  def create
    # This line creates a new instance of the Article model 
    # and assigns it to the # @article instance variable
    # The parameters for the new object are extracted from the "article" parameter
    # of the request using the "require" method, which raises an error if the specified parameter is missing
    # The "permit" method is used to specify which parameters are allowed for the article object,
    # in this case, the "title" and "description" attributes
    @article = Article.new(article_params)
    # This line create a new article in DB based on the input from the form
    if @article.save
      # This line is a rails helper method to display the message after saving
      flash[:notice] = "Article was created successfully."
      # This line is responsible to redirect the user on newly created article
      redirect_to @article
    else
      # puts @article.errors.inspect
      render 'new'
    end
  end

  def update
    @article.update(article_params)
    if @article.save
      flash[:notice] = "Article was successfully updated."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
    flash[:notice] = "Article was deleted successfully."
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end