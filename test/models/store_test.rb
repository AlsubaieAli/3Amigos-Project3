# == Schema Information
#
# Table name: stores
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  longitude   :float
#  latitude    :float
#  headline    :string
#  images      :string
#  price       :decimal(, )
#  bio         :string
#  email       :string
#  number      :text
#  website     :string
#  facebook    :string
#  instagram   :string
#  snapchat    :string
#  twitter     :string
#  extra_link  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  approved    :boolean          default(FALSE)
#  category_id :integer
#  city        :string
#

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
