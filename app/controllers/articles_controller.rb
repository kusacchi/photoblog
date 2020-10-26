class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :validate_user, only: [:show, :edit, :update, :destroy]

  def index
    @articles = current_user.articles.order(created_at: :desc)
  end

  def show
  end

  def edit
  end

  def new
    @article = Article.new
  end

  def update
    if @article.update(article_params)
      redirect_to root_path, notice: "更新できました。"
    else
      redirect_to edit_article_path, alert: "更新できませんでした。"
    end
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to root_path, notice: "投稿しました。"
    else
      redirect_to new_article_path, alert: "投稿できませんでした。"
    end
  end

  def destroy
    if @article.destroy
      redirect_to root_path, notice: "削除しました。"
    else
      redirect_to root_path, alert: "削除に失敗しました。"
    end
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :image)
  end

  def validate_user
    if @article.user != current_user
      redirect_to root_path, alert: "自分の投稿ではありません。"
    end
  end
end
