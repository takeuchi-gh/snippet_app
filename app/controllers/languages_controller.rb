class LanguagesController < ApplicationController
  before_action :set_languages, only: [:index, :new, :create]
  def index
  end
  
  def show
  end
  
  def new
    @language = Language.new
  end
  
  def create
    @language = Language.new(language_params)
    @language.user_id = current_user.id
    if @language.save
      redirect_to root_path
      flash[:success] = "登録しました"
    else
      flash[:danger] = "エラー"
      render :new
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
    @language = Language.find(params[:id])
    if @language.destroy
      flash[:success] = "カテゴリーを削除しました"
      redirect_to root_path
    else
      flash[:danger] = "エラー"
    end
  end
  
  private
    def language_params
      params.require(:language).permit(:name, user_id: params[:user_id])
    end
    
    def set_languages
      @languages = Language.all
    end
end
