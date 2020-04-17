class FilmsController < ApplicationController
    before_action :authenticate_user!

    def index
      @films= Film.all.order(created_at: "DESC") 
    end

    def new
      @film = Film.new
    end
    
    def create
      @film = Film.new(film_params)
      @film.user_id = current_user.id

      if @film.save
        redirect_to action: "index"
      else
        redirect_to action: "new"
      end
      
    end

    def show
      @film = Film.find(params[:id])
      @like = Like.new
    end

    def edit
      @film = Film.find(params[:id])
    end

    def update
      @film = Film.find(params[:id])

      if @film.update(film_params)
        redirect_to :action => "show", :id => @film.id
      else
        redirect_to :action => "new"
      end

    end

    def destroy
      Film.find(params[:id]).destroy
      redirect_to action: :index
    end
      
    private
    def film_params
      params.require(:film).permit(:body, :image, :title, :actor, :released_year, :service_id)
    end
end
