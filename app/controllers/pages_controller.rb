class PagesController < ApplicationController
    before_action :authenticate_user!
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

    def cart
        if session[:cart_items]
            @cart_games = BoardGame.find(session[:cart_items])
        end
    end

    def add_to_cart
        (session[:cart_items] ||= []) << params[:id] unless session.include?(:id)
        flash[:notice] = "Added to cart"
        redirect_back fallback_location: product_path
    end

    def remove_from_cart
        session[:cart_items] ||= [].delete :params[:id]
        redirect_back fallback_location: cart_path
    end

    def checkout
    end

    def checkout_order
    end
end
