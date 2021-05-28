Rails.application.routes.draw do
  # エラー原因:blogコントローラー名が間違っている
  # 修正の意図:正しいコントローラー名に修正
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
