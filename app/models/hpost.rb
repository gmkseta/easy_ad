class Hpost < ActiveRecord::Base
    mount_uploader :picture1, PictureUploader
end
