class BoardGamesController < ApplicationController
    def index
        if params[:search_keywords]
            @wildcard_keywords = '%' + params[:search_keywords] + '%'
            @games = BoardGame.where("name LIKE ?", @wildcard_keywords).page(params[:page]).per(12)
        elsif params[:sort]
            @sort_keyword = params[:sort]
            @games = BoardGame.where("status LIKE ?", @sort_keyword).page(params[:page]).per(12)
        elsif params[:order]
            if params[:order] = "Alphabetically"
                @games = BoardGame.order("name ASC").page(params[:page]).per(12)
            elsif params[:order] = "Newest"
                @games = Boardgame.order('created_at ASC').page(params[:page]).per(12)
            elsif params[:order] = "Oldest"
                @games = Boardgame.order('created_at DESC').page(params[:page]).per(12)
            elsif params[:order] = "Lowest Price"
                @games = Boardgame.order('price DESC').page(params[:page]).per(12)
            elsif params[:order] = "Highest Price"
                @games = Boardgame.order('price ASC').page(params[:page]).per(12)
            end
        elsif params[:filter_by]
            @filtered_category = params[:filter_by]

            if @filtered_category == ""
                redirect_to products_path
            else
                @games = BoardGame.where("category_id = ?", @filtered_category).page(params[:page]).per(12)
            end
        else
        @games = BoardGame.all.page(params[:page]).per(12)
        end
    end

    def show
        @game = BoardGame.find(params[:id])
    end

    # def filter_results
    #     @filtered_category = params[:filter_by]
    #
    #     if @filtered_category == ""
    #         redirect_to products_path
    #     else
    #         @games = BoardGame.where("category_id = ?", @filtered_category)
    #     end
    # end
end
