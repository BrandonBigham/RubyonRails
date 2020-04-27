class ShoesController < ApplicationController
    before_action :require_host, except: [:index, :create, :show]

    def index
      @user = current_user
      @shoes = Shoe.all
      @purchases = Purchase.all
    end
  
    def create
      shoe = Shoe.create(shoe_params)
      if shoe.errors.any?
        flash[:messages] = shoe.errors.full_messages
        redirect_to "/users/:id"
      else
        flash[:messages] = ["New Shoe Added"]
        redirect_to(fallback_location: root_path)
      end
    end
  
    def destroy
      Shoe.find(params[:id]).destroy
      redirect_to "/shoes"
    end
  
    private
    def shoe_params
      params.require(:shoe).permit(:name, :price).merge(user: current_user)
    end

    def require_host
      if Shoe.exists?(params[:id])
        shoe = Shoe.find(params[:id])
        unless shoe.user == current_user
          flash[:messages] = ["Must be the person who owns this shoe to remove it"]
          redirect_to "/shoes"
        end
      else
        flash[:messages] = ["that shoe doesn't exist"]
        redirect_to "/shoes"
      end
    end

end
