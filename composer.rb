require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/data/classical_guitar.db")
# Code goes here
DataMapper.finalize