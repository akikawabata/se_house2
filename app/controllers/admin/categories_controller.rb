class Admin::CategoriesController < ApplicationController
  def index
  end

  def new
    @categorie = Categorie.new
  end

  def create
      # １.&2. データを受け取り新規登録するためのインスタンス作成
    categorie = Categorie.new(categorie_params)
      # 3. データをデータベースに保存するためのsaveメソッド実行
    categorie.save
      # 4. トップ画面へリダイレクト
    redirect_to 'admin_categories_path'
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def categorie_params
    params.require(:categorie).permit(:categories_name)
  end
end
