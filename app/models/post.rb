class Post < ApplicationRecord

  validates :date, {presence: true}
  validates :race, {presence: true}
  validates :horse, {presence: true}
  validates :comment1, {presence: true}
  validates :user_id, {presence: true}
  
end
