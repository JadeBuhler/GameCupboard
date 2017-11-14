class BoardGamesController < ApplicationController
    def index
        @games = BoardGame.all
    end

    def filterByNew
        @games = BoardGame.where(status: 'New')
    end
end
