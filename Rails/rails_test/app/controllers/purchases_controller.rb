class PurchasesController < ApplicationController

    def create
        Purchase.create(shoe: Shoe.find(params[:id]), user: current_user)
        redirect_to "/users/#{current_user.id}"
    end
end
