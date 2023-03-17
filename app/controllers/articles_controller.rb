class ArticlesController < ApplicationController
  
  # This method finds the article with the ID specified in the params hash
  def show
    @article = Article.find(params[:id])
  end
  
  # This method retrieves all articles from the database
  def index
    @articles = Article.all
  end

  # This method is empty and doesn't do anything
  def new
    @article = Article.new
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
    @article = Article.new(params.require(:article).permit(:title, :description))
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
end

