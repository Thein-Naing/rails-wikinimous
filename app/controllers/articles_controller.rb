class ArticlesController < ApplicationController
  class TasksController < ApplicationController
    before_action :set_task, only: %i[show edit update destroy]
    def index
      @articles = Article.all
    end

    def show
      @article
    end

    def new
      @article = Article.new
    end

    def create
      Article.create!(params_article)
      redirect_to article_path([:id])
    end

    def edit
      @article
    end

    def update
      @article.update!(params_article)
      redirect_to article_path(@article)
    end

    def destroy
      @article.destroy
      redirect_to articless_path
    end

    private

    def params_task
      params.require(:article).permit(:title, :details)
    end

    def set_task
      @article = Article.find(params[:id])
    end
  end
