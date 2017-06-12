class CommentsController < ApplicationController

	def	create
		author_name = current_user.username
		@comment	=	Comment.new(comment_params)
		@comment.article_id	=	params[:article_id]
		@comment.author_name = current_user.username
		@comment.save
		redirect_to	article_path(@comment.article)
	end
	
	private

	def	comment_params
		params.require(:comment).permit(:author_name,	:body)
	end
	
end
