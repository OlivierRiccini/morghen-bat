class ServiceUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
