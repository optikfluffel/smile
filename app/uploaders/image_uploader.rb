class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick support:
  include CarrierWave::RMagick

  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  # Choose what kind of storage to use for this uploader:
  storage :file

  # Process files as they are uploaded:
  process :resize_to_limit => [1200, 1200]

  # Create different versions of your uploaded files:
  version :small do
    process :resize_to_limit => [296, 296]
  end

  version :medium do
    process :resize_to_limit => [577, 577]
  end

  version :large do
    process :resize_to_limit => [959, 959]
  end

  # Add a white list of extensions which are allowed to be uploaded.

end
