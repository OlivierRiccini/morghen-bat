class CompanyHistory < ApplicationRecord
  has_many :pictures, as: :pic_duty
  translates :content
end
