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
        @games = BoardGames.where("name LIKE ?", @wildcard_keywords)
    end

    def filter_results
        @filtered_category = params[:filter_by]

        if @filtered_category == ""
            redirect_to products_path
        else
            @games = BoardGame.where("category_id = ?", @filtered_category)
        end
    end
end
