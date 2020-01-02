class SnippetsController < ApplicationController
  def index
  end
  
  def show
    @snippet = Snippet.find(params[:id])
    @language = Language.find(@snippet.language_id)
  end
  
  def new
    @snippet = Snippet.new
  end
  
  def create
    @snippet = Snippet.new(snippet_params)
    @snippet.language_id = params[:snippet][:language_id]
    if @snippet.save
      redirect_to @snippet
      flash[:success] = "登録しました"
    else
      flash[:danger] = "エラー"
      render :new
    end
  end
  
  def edit
    @snippet = Snippet.find(params[:id])
  end
  
  def update
    snippet = Snippet.find(params[:id])
    snippet.language_id = params[:snippet][:language_id]
    if snippet.update(snippet_params)
      redirect_to root_path
      flash[:success] = "更新しました"
    else
      flash[:danger] = "エラー"
      render :new
    end
  end
  
  def destroy
    @snippet = Snippet.find(params[:id])
    if @snippet.destroy
      redirect_to root_path
      flash[:success] = "スニペットを削除しました"
    else
      flash[:danger] = "エラー"
    end
    
  end
  
  private
  def snippet_params
    params.require(:snippet).permit(:title, :code, :comment, language_id: params[:language_id])
  end
  

end
