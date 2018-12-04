# == Schema Information
#
# Table name: tags
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

class Tag < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :stores
end
