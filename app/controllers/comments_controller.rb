class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)
		@comment.thread1_id = params[:thread1_id]
		#binding.pry
		if @comment.save
			redirect_back(fallback_location: root_path)
		else
			redirect_back(fallback_location: root_path)
		end
	end

	def destroy
		comment = Comment.find(params[:id])
		#binding.pry
		comment.destroy
		redirect_back(fallback_location: root_path)
	end

	private
		def comment_params
			params.require(:comment).permit(:content, :thread1_id)
		end
end
