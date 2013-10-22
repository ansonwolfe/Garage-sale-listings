class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params[:category])
		if @category.save
			flash[:notice] = "Category successfully created"
			redirect_to @category
		else
			render action: "new"	
		end	
	end

	def show
		@category = Category.find(params[:id])

	end

	def edit
		@category = Category.find(params[:id])	
	end

	def update
		@category = Category.find(params[:id])
		if @category.update_attributes(params[:product])
		   flash[:notice] = "Successfully updated."
			redirect_to @category
		else 
			render :edit
		end	
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
			redirect_to "/categories"
	end
end