class Model < ApplicationRecord
  validates :model_id, presence: true

  validates :user_name, presence: true, length: { minimum: 4, maximum: 16 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, dependent: :destroy
end
