class Offer < ApplicationRecord
  has_many :pictures, as: :pic_duty

  translates :name, :category, :content
end
