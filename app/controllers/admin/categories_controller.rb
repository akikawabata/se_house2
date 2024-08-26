class Admin::CategoriesController < ApplicationController

  def new
    @categories = Category.new
  end

  def create
      # １.&2. データを受け取り新規登録するためのインスタンス作成
    category = Category.new(category_params)
      # 3. データをデータベースに保存するためのsaveメソッド実行
    category.save
      # 4. トップ画面へリダイレクト
    redirect_to admin_categories_path,  notice: "カテゴリを追加しました。"
  end



  def show
  end

  def edit
    @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end

  def update
    category = Category.find(params[:id])
    category.update(category_params)
    redirect_to admin_category_path(category.id)  
  end

  private

  def category_params
    params.require(:category).permit(:categories_name)
  end
end
