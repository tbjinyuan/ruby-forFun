require 'active_record'


ActiveRecord::Base.establish_connection(
        :adapter => 'sqlite3',
        :database => 'minialbum.sqlite3'
)

class Album < ActiveRecord::Base
  has_many :pictures
end

class Picture < ActiveRecord::Base
   belongs_to :album
end



