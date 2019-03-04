class Tag < ApplicationRecord
  has_many :doc_tags
  has_many :documents, through: :doc_tags

end
