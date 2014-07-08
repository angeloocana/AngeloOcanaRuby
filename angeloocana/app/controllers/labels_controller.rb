class LabelsController < ApplicationController

	before_action :set_label, only: [:show, :edit, :update, :destroy]

	def index
	  	@labels = Label.all_lazy
	end

	def show
		
	end

	def new 
		@label = Label.new
	end

	def edit
		
	end

	def create 
		@label = Label.new(label_params)

		if @label.save 
			redirect_to action: 'index', notice: 'Label was successfully created.'
		else
			render :new, notice: 'Error on saving!' 
		end
	end

	def update
		if(@label.update(label_params))
			redirect_to action: 'index', notice: 'Label was successfully updated.'
		else
			render :edit, notice: 'Error on saving!' 	
		end
	end

	def destroy		
		respond_to do |format|
 			if(@label.destroy)
				format.html {redirect_to labels_url, notice: 'Label was successfully destroyed.'}
				format.json {head :no_content}
			else
				format.html {redirect_to labels_url, notice: 'Error on destroying!' }
				format.json {render json: @label.errors, status: :unprocessable_entity}		
			end
		end
	end

	private

	def set_label
		@label = Label.find(params[:id])
	end

	def label_params
		params.require(:label).permit(:name)
	end

end
