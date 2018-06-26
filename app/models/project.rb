class Project < ApplicationRecord
  has_many :pictures, as: :pic_duty
  translates :name, :location, :category, :content
end
