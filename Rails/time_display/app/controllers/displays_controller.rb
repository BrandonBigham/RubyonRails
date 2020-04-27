class DisplaysController < ApplicationController
    def index
        @date = DateTime.current.strftime('%b %d, %Y')
        @time = DateTime.current.strftime('%I:%M:%S')
        render 'index'
    end
end
