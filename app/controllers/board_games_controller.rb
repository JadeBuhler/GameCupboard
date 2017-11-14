class BoardGamesController < ApplicationController
    def index
        @games = BoardGame.all
    end

    def show
        @game = BoardGame.find(params[:id])
    end
end
