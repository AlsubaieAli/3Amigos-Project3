class Category < ApplicationRecord
  has_many :stores
  has_many :tags
end
