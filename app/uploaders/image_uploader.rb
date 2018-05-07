require "image_processing/mini_magick"

  class ImageUploader < Shrine
    include ImageProcessing::MiniMagick
    plugin :processing
    plugin :versions   # enable Shrine to handle a hash of files
    plugin :delete_raw # delete processed files after uploading
  
    process(:store) do |io, context|
      original = io.download
      pipeline = ImageProcessing::MiniMagick.source(original)
  
      size_80 = pipeline.resize_to_limit!(80, 80)
      size_150 = pipeline.resize_to_limit!(150, 150)
      size_500 = pipeline.resize_to_limit!(500, 500)
  
       original.close! #gets rid of image in memory
  
      { original: io, thumb: size_80, medium: size_150
        }
    end
  end