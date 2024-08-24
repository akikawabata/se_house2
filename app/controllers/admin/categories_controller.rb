class Admin::CategoriesController < ApplicationController

  def new
    @category = Category.new
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
  end

  def index
    @categories = Category.all
  end

  def update
  end

  private

  def category_params
    params.require(:category).permit(:categories_name)
  end
end
