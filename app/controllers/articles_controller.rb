class ArticlesController < ApplicationController
  include ArticlesHelper
  
  def index
  @articles = Article.all
end
  
  def show
  @article = Article.find(params[:id])
    
  @comment = Comment.new
    @comment.article_id = @article.id #adding comments view
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
    @article = Article.new(article_params) #creating new article
  @article.save
    flash.notice = "Article '#{@article.title}' Created!"#adding update message
    
  redirect_to article_path(@article)
end
  
  def destroy
    @article = Article.find(params[:id])#finding article by id
    @article.destroy
    
    flash.notice = "Article '#{@article.title}' Deleted!"#adding update message
    
    redirect_to article_path(@article)
  end
  def edit
    @article = Article.find(params[:id])#finding article by id
    
  end
  def update
    @article = Article.find(params[:id])#finding article by id
  @article.update(article_params)
    
    flash.notice = "Article '#{@article.title}' Updated!"#adding update message

  redirect_to article_path(@article)
end
  
end
