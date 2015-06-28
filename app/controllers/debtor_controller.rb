class DebtorController < ApplicationController

	def index
		@debtors = Debtor.all
	end

	def new
		@debtor = Debtor.new
	end

	def create
		@debtor = Debtor.new(debtor_params)
		if @debtor.save
			redirect_to @debtor
		else
			render 'new'
		end
	end

	def show
		@debtor = Debtor.find params[:id]
	end

	def edit
		@debtor = Debtor.find(params[:id])
	end

	def update
		 @debtor = Debtor.find(params[:id])
 		if @debtor.update(debtor_params)
    		redirect_to @debtor
 		else
   			render 'edit'
   		end
	end

	def destroy
		@debtor = Debtor.find(params[:id])
  		@debtor.destroy
  		redirect_to debtors_path
	end

	private
	def debtor_params
		params.require(:debtor).permit(:name)
	end
end