class BoardGamesController < ApplicationController
    def index
        @games = BoardGame.all.page(params[:page]).per(10)
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

    def filter_results
        @filtered_category = params[:filter_by] + '"'
        @games = BoardGame.where("category =", @filtered_category)
    end
end
