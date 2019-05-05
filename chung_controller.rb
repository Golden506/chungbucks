class ChungController < ApplicationController
	def index
		@accounts = Account.all
	end
	def new
		@account = Account.new
	end
	def create
                @account = Account.new(account_params)
                puts "ACCOUNT: #{@account}"
                if @account.save
                        redirect_to '/index'
                else
                        render 'new'
                end 
        end
	def transfer
		@users = Account		
	end
	private def account_params
		params.require(:account).permit(:username, :password)
	end
end
