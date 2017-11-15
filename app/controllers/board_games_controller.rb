class BoardGamesController < ApplicationController
    def index
        @games = BoardGame.all.page(params[:page]).per(5)
    end

    def show
        @game = BoardGame.find(params[:id])
    end

    def new_game
    end

    def search_results
        @wildcard_keywords = '%' + params[:search_keywords] + '%'
        @games = BoardGame.where("name LIKE ?", @wildcard_keywords)
    end
end
