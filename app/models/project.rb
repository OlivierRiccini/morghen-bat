class Project < ApplicationRecord
  has_many :pictures, as: :pic_duty
  accepts_nested_attributes_for :pictures
  translates :name, :location, :category, :content
end
