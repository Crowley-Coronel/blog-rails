class ArticlesController < ApplicationController
    def new
        @article = Article.new
        
    end

    def create
        @article = Article.create(title: params[:article][:title], status: 0, content: params[:article][:content])
        render json: @article
    end
end
