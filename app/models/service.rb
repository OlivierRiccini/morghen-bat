class Service < ApplicationRecord
  mount_uploader :icon, ServiceUploader
  translates :title, :content
end
