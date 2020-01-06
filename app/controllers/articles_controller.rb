class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(articles_params)
      redirect_to articles_path
      flash[:message] = "Article successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to articles_path
      flash[:message] = "Article successfully Destroyed"
    end
  end
  private
    def articles_params
      params.require(:article).permit(:title, :description)
    end
end
