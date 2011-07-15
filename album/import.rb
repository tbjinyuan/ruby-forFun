require File.dirname(__FILE__) + '/model'
require 'rio'


def db_import

  rio('public/statics/images/hp').files('*_thumbnail.jpg').each do |pic_file|
    thumbnail = pic_file.filename.to_s
    origin = thumbnail.sub("_thumbnail", "")
    Picture.create(:album_id => 1, :thumbnail => thumbnail, :origin => origin )
  end
end
db_import
