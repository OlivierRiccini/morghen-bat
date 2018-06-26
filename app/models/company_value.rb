class CompanyValue < ApplicationRecord
  mount_uploader :icon, CompanyValueUploader
  translates :content
end
