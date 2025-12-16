class ArticlesController < ApplicationController
  
  def show
  @article_show = Article.find(params[:id]) 
  end

  def index
    @articles = Article.all
  end
  
  def new
  end

  def create
    @article = Article.new(article_params)
    
    if @article.valid?
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def edit

  end

end

private

def article_params
  params.require(:article).permit(:title, :text)
end

