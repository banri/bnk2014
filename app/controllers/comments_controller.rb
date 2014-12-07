class CommentsController < ApplicationController
	def index
	end

	def theme
		@id = params[:id]
		@comment = params[:comment] if params[:comment]
		pname = params[:name] if params[:name]
		render :action => "theme"
	end

	def comfirm
		@comment = params[:comment]
		@name = params[:name]
		@id = params[:id]
		p params
		render :action => "comfirm"
	end

	def complete
		@comment = Comment::new
		@comment.comment = params[:comment]
		@comment.name = params[:name]
		@comment.theme_num = params[:id]

		@msg = @comment.save! ? "投稿が完了しました。" : "投稿に失敗しました。再度投稿してください。" 
		render :action => "complete"
	end
end
