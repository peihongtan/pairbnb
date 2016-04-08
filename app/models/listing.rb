class Listing < ActiveRecord::Base
	mount_uploaders :photos, PhotoUploader
	belongs_to :user
end
