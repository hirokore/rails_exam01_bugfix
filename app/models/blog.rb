class Blog < ApplicationRecord
  # エラー原因:アソシエーション名が慣習に沿ってない
  # 修正の意図:慣習に合わせて、commentsに変更
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
