class DebtsController < ApplicationController

	def index
		@debts = Debt.all
	end

	def new
		@debt = Debt.new
	end


	def create
		@user = User.find params[:user_id]
		@debt = @user.debts.create(debt_params)
		redirect_to user_path(@user)
	end

	private
		def debt_params
			params.require(:debt).permit(:debtor_id, :amount, :description)
		end


	def show
		@debt = Debt.find params[:id]
	end

	def edit
		@debt = Debt.find(params[:id])
	end

	def update
		 @debt = Debt.find(params[:id])
 		if @debt.update(debt_params)
    		redirect_to @debt
 		else
   			render 'edit'
   		end
	end

	def destroy
		@debt = Debt.find(params[:id])
  		@debt.destroy
  		redirect_to debts_path
	end

end