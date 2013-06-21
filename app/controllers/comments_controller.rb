class CommentsController < ApplicationController
	def index
		@comments = Comment.all
	end	

	
	def create
		@comment = Product.find(params[:id]).comments.new(params[:comment])
		if @comment.save
			@product = Product.find(params[:id])
			redirect_to @product
		else
			render action: "new"	
		end	
	end	

	def destroy

	end
end
