class LikesController < ApplicationController
    before_action :set_film
    def create
        @like = current_user.likes.new(film_id: @film.id)
        @like.save
    end
    def destroy
        @like = Like.find_by(film_id: params[:film_id], user_id: current_user.id)
        @like.destroy
    end
    private
    def set_film
        @film = Film.find(params[:film_id])
    end
end
