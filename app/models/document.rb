class Document < ApplicationRecord
  has_many :doc_tags
  has_many :tags, through: :doc_tags
  belongs_to :workspace
  has_one_attached :image

end
