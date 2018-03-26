#app/models/tagging.rb
class Tagging < ApplicationRecord
  validates_presence_of :tag_id, :article_id
  belongs_to :tag
  belongs_to :article
end
