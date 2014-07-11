class ArticlesController < ApplicationController
  include ArticlesHelper
  
  def index
  @articles = Article.all
end
  
  def show
  @article = Article.find(params[:id])
end
  
  def new
  @article = Article.new
end
  ##This method was the original create method
  #def create
 #  @article = Article.new(
 #    title: params[:article][:title],
  #   body: params[:article][:body])
  
 # @article.save
   # redirect_to article_path(@article)
    
#end
  def create
  @article = Article.new(article_params)
  @article.save
    
  redirect_to article_path(@article)
end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to articles_index_path
  end
  def edit
    @article = Article.new(article_params)
  end
  
end
