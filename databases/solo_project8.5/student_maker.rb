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

def display_ascending_order(db)
	students = db.execute("SELECT * FROM students ORDER BY name")
	puts "###### STUDENT LIST ######"
	students.each do |student|
		puts " #{student['name']} | #{student['major']} | email : #{student['email']}"
	end

end


########################### DRIVER CODE ###############################

# faker gem to populate data
# 50.times do
# 	create_student(db,Faker::Number.number(5),Faker::Name.name,Faker::Educator.course,Faker::Internet.email)
# end

# find student by email address
find_student(db,"email","AlyJ@gmail.com")

# find student by student id number
find_student(db,"student_id",182662)

# find student by major
find_student(db,"major","Global Business Admin")

# find student by name
find_student(db,"name","Aly Johnson")

# show all the student by ascending order
display_ascending_order(db)