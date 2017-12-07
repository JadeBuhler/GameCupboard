class BoardGamesController < ApplicationController
    before_action :authenticate_user!
    def index
        @filtered_category = params[:filter_by]
        @sort_keyword = params[:sort]

        if params[:filter_by] && params[:search_keywords] == ""
            if @filtered_category == ""
                redirect_to products_path
            else
                @games = BoardGame.where("category_id = ?",             @filtered_category).page(params[:page]).per(30)
            end
        elsif params[:filter_by] == "" && params[:search_keywords]
            @wildcard_keywords = '%' + params[:search_keywords] + '%'
            @games = BoardGame.where("name LIKE ?", @wildcard_keywords).page(params[:page]).per(30)
        elsif params[:filter_by] && params[:search_keywords]
            @wildcard_keywords = '%' + params[:search_keywords] + '%'
            @games = BoardGame.where("category_id =?", @filtered_category).where("name LIKE ?", @wildcard_keywords).page(params[:page]).per(30)
        elsif params[:sort]
            @games = BoardGame.where("status LIKE ?", @sort_keyword).page(params[:page]).per(30)
        elsif params[:order]
            if params[:order] = "Alphabetically"
                @games = BoardGame.order("name ASC").page(params[:page]).per(30)
            elsif params[:order] = "Newest"
                @games = BoardGame.order('created_at ASC').page(params[:page]).per(30)
            elsif params[:order] = "Oldest"
                @games = BoardGame.order('created_at DESC').page(params[:page]).per(30)
            elsif params[:order] = "Lowest Price"
                @games = BoardGame.order('price DESC').page(params[:page]).per(30)
            elsif params[:order] = "Highest Price"
                @games = BoardGame.order('price ASC').page(params[:page]).per(30)
            end
        else
        @games = BoardGame.all.page(params[:page]).per(24)
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
