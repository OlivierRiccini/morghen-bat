class Banner < ApplicationRecord
  mount_uploader :image, BannerUploader
  translates :tagline
end
