class BoardGamesController < ApplicationController
    def index
        @games = BoardGame.all
    end

    def show
        @game = BoardGame.find(params[:id])
    end

    def search_results
        @wildcard_keywords = '%' + params[:search_keywords] + '%'
        @games = BoardGame.where("name LIKE ?", @wildcard_keywords)
    end
end
