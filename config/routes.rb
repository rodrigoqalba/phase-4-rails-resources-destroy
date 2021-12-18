Rails.application.routes.draw do
  # because all 5 routes are being used, we dont need to include the only option
  resources :birds#, only: [:index, :show, :create, :update, :destroy]
  patch "/birds/:id/like", to: "birds#increment_likes"
end
