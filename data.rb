require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/data/classical_guitar.db")

class Composer
  include DataMapper::Resource

  property :id, Serial
  property :last_name, String
  property :first_name, String
  property :biography_link, String
  property :period, String
  has n, :scores
end

class Score
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :description, Text
  property :performance_link, String
  property :pdf_link, String
  property :difficulty, String
  property :rcm_grade, String
  property :notes, Text
  property :time_signature, String
  property :main_key, String
  property :tempo, String
  belongs_to :composer
end
# DataMapper.auto_migrate!
DataMapper.finalize