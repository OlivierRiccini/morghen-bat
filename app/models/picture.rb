class Picture < ApplicationRecord
  belongs_to :pic_duty, polymorphic: true
  mount_uploader :url, PictureUploader
end
