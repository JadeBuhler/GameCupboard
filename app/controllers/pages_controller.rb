class PagesController < ApplicationController
    def index
        @bgames = BoardGame.last(5)
        @expansions = Expansion.last(5)
    end

    def about
    end

    def contact
    end
end
