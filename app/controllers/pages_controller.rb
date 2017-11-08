class PagesController < ApplicationController
    def index
        @bgames = BoardGame.all
    end

    def about
    end

    def contact
    end
end
