class CompanyKnowHow < ApplicationRecord
  mount_uploader :icon, CompanyKnowHowUploader
  translates :content
end
