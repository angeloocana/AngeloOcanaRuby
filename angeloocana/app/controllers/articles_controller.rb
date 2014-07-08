class ArticlesController < ApplicationController
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	def index
	  	@articles = Article.all_lazy
	end

	def show
		
	end

	def new 
		@article = Article.new
	end

	def edit
		
	end

	def create 
		@article = Article.new(article_params)

		if @article.save 
			redirect_to action: 'index', notice: 'article was successfully created.'
		else
			render :new, notice: 'Error on saving!' 
		end
	end

	def update
		if(@article.update(article_params))
			redirect_to action: 'index', notice: 'article was successfully updated.'
		else
			render :edit, notice: 'Error on saving!' 	
		end
	end

	def destroy		
		respond_to do |format|
 			if(@article.destroy)
				format.html {redirect_to articles_url, notice: 'article was successfully destroyed.'}
				format.json {head :no_content}
			else
				format.html {redirect_to articles_url, notice: 'Error on destroying!' }
				format.json {render json: @article.errors, status: :unprocessable_entity}		
			end
		end
	end

	private

	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:name)
	end
end
