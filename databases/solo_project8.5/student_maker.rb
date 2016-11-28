require 'sqlite3'
require 'faker'

#create sqlite3 database
db = SQLite3::Database.new("students.db")
db.results_as_hash = true;