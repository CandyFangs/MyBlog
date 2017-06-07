class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
		@comment	=	Comment.new
		@comment.article_id	=	@article.id
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash.now[:notice] = "Success"
			redirect_to articles_path
		else
			flash[:error] = "Something was wrong"
			render :new
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			flash[:notice] = "Your post was updated"
			redirect_to articles_path
		else
			flash[:error] = "Something was wrong"
			render :edit
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		flash[:notice] = "Your post was deleted"
		redirect_to articles_path
	end

	private

	def article_params
		params.require(:article).permit(:title, :body, :tag_list, :picture)
	end


end
