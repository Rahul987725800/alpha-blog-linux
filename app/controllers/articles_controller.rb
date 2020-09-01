class ArticlesController < ApplicationController 
    def show 
        @article = Article.find(params[:id])
    end
    def index 
        @articles = Article.all
    end
    def new
    end
    def create 
        # we need to specify the fields we extract this is for security
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.save
        redirect_to @article 
        # redirect_to article_path(@article) also works
    end
end