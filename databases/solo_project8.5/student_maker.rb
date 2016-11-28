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
		student_id INTEGER,
		name VARCHAR(255),
		major VARCHAR(255),
		email VARCHAR(255)
	)
SQL

# db.execute("drop table if exists students;")
db.execute(create_table_cmd) 

def create_student(db,student_id,name,major,email)
	db.execute("INSERT INTO students (student_id,name,major,email) VALUES (?,?,?,?)",[student_id,name,major,email])
end

def find_student(db,attr,value)
	puts "##### Results #####"

	case attr
	when "student_id"
	result = db.execute("SELECT student_id,name,major,email FROM students WHERE student_id = ?",[value])

	when "name"
	result = db.execute("SELECT student_id,name,major,email FROM students WHERE name = ?",[value])

	when "major"
	result = db.execute("SELECT student_id,name,major,email FROM students WHERE major = ?",[value])

	when "email"
	result = db.execute("SELECT student_id,name,major,email FROM students WHERE email = ?",[value])

	else
		puts "INVALID INPUT"
	end
	puts "#{result[0]['student_id']} | #{result[0]['name']} | #{result[0]['major']} "
	puts "email : #{result[0]['email']}"
end