require "shrine"
require "shrine/storage/file_system"
require "mini_magick" 

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
  store: Shrine::Storage::FileSystem.new("public", prefix: "uploads"), # permanent
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for forms