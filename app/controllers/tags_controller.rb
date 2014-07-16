class TagsController < ApplicationController
  def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tag = Tag.all
	end

	def destroy
		@article = Article.find(params[:id])
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "Tag #{@tag.name} Destroyed!"
		redirect_to article_path(@article)
	end

	def new
		@tag = Tag.new
    redirect_to article_path(@article)
	end
end
