class Offer < ApplicationRecord
  has_many :pictures, as: :pic_duty
end
