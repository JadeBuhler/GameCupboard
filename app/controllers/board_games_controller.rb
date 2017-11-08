class BoardGamesController < ApplicationController
    def index
        @games = BoardGame.all
    end
end
