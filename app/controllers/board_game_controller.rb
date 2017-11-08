class BoardGameController < ApplicationController
    def index
        @games = BoardGame.all
    end
end
