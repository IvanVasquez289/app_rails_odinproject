class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
end
