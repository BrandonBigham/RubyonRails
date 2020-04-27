class UsersController < ApplicationController
    def index
        session[:views] ||=0
        render "index"
    end

    def create
        session[:views] += 1
        session[:result] = params[:survey]
        flash[:success] = "Thanks for submitting this form! you have submitted #{session[:views]} times"
        redirect_to "/result"
    end

    def result
        @result = session[:result]
        render "result"
    end
end
