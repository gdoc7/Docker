class Api::TransactionsController < ApplicationController
respond_to :json
skip_before_action :verify_authenticity_token


def show
	respond_with Transaction.find(params[:id])	
end

def create
	 transaction= Transaction.new(transaction_params)

    if transaction.save 
      render json: transaction, status: 201 
    else
      render json: { errors: transaction.errors}, status: 422
    end
  end

  def update
    transaction = Transaction.find(params[:id])

    if transaction.update(transaction_params)
      render json: transaction, status: 200
    else
      render json: { errors: transaction.errors }, status: 422
    end
  end
def destroy
	transaction = Transaction.find(params[:id])
    transaction.destroy
    head 204
	
end
def transaction_params
	params.require(:transaction).permit(:user_id, :price)
	
end
	
end