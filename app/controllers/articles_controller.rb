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
    
    if @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id]) 
  end

  def update
    @article = Article.find(params[:id]) 
    
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end

end

private

def article_params
  params.require(:article).permit(:title, :text)
end

