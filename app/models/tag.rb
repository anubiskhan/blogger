#app/models/tag.rb
class Tag < ApplicationRecord
  validates_presence_of :name
  has_many :taggings
  has_many :articles, through: :taggings
end
