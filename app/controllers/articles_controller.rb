class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_pararms)
    @article.save
    redirect_to article_path(@article)  
  end

  private

    def article_pararms
      params.require(:article).permit(:title, :description)
    end 

end