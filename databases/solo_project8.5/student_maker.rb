# require gems
require 'sqlite3'
require 'faker'

#create sqlite3 database
db = SQLite3::Database.new("students.db")
db.results_as_hash = true;

# Using string delimeter to create string, to add to data
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS students(
		id INTEGER PRIMARY KEY,
		student_number INTEGER,
		name VARCHAR(255),
		major VARCHAR(255),
		email VARCHAR(255)
	)
SQL