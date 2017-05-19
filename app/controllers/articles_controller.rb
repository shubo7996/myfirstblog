class ArticlesController < ApplicationController
	before_action :find_article, only: [:edit, :update, :show, :delete]
  before_action :require_login, except: [:index, :show]

  def index
    @articles = Article.all
  end

  # New action for creating article
  def new
    @article = Article.new
  end

  # Create action saves the article into database
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Successfully created article!"
      redirect_to article_path(@article)
    else
      flash[:alert] = "Error creating new article!"
      render :new
    end
  end

  # Edit action retrives the article and renders the edit page
  def edit
  end

  # Update action updates the article with the new information
  def update
    if @article.update_attributes(article_params)
      flash[:notice] = "Successfully updated article!"
      redirect_to article_path(@article)
    else
      flash[:alert] = "Error updating article!"
      render :edit
    end
  end

  # The show action renders the individual article after retrieving the id
  def show
  end

  # The destroy action removes the article permanently from the database
  def destroy
    if @article.destroy
      flash[:notice] = "Successfully deleted article!"
      redirect_to articles_path
    else
      flash[:alert] = "Error updating article!"
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
