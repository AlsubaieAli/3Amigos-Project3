# == Schema Information
#
# Table name: stores
#
#  id           :integer          not null, primary key
#  name         :string
#  address      :string
#  longitude    :float
#  latitude     :float
#  headline     :string
#  images       :string
#  price        :decimal(, )
#  bio          :string
#  email        :string
#  number       :text
#  website      :string
#  facebook     :string
#  instagram    :string
#  snapchat     :string
#  twitter      :string
#  extra_link   :string
#  category     :string
#  sub_category :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Store < ApplicationRecord
  mount_uploader :images, ImageUploader
  has_many :comments
  belongs_to :category
  has_and_belongs_to_many :tags
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
