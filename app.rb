require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './models/student'
require './models/college_class'
require './models/student_class'
set :database, { adapter: "sqlite3", database: "mydb.db" }

get '/' do
    erb :home
end

get '/students' do
    @students = Student.all
    erb :students
end

get '/show_student' do
    @student = Student.find(params[:id])
    @classes = @student.college_classes
    erb :show_student
end

get '/classes' do
    @classes = CollegeClass.all
    erb :classes
end

get '/show_class' do
    @class = CollegeClass.find(params[:id])
    @students = @class.students
    erb :show_class
end

