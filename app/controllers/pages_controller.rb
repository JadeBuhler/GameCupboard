class PagesController < ApplicationController
    def index
        @bgames = BoardGame.last(5)
        @expansions = Expansion.last(5)
    end

    def about
        @about = Page.where(Name: 'About').take
    end

    def contact
        @contact = Page.where(Name: 'Contact').take
    end
end
