class Offer < ApplicationRecord
  has_many :pictures, as: :pic_duty
  accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true

  translates :name, :category, :content
end
