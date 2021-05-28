Rails.application.routes.draw do
  # blogコントローラー名が間違っている
  # 正しいコントローラー名に修正
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
