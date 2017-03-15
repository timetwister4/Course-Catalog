# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
instructors = JSON.parse(File.read('instructor.json'))
subjects = JSON.parse(File.read('subject.json'))
courses = JSON.parse(File.read('course.json'))

instructors.each do |instructor|
  Instructor.create(first: instructor["first"], middle: instructor["middle"], last: instructor["last"], email: instructor["email"])
end

subjects.each do |subject|
  Subject.create(subject_id: subject["id"], name: subject["name"], abbreviation: subject["abbreviation"], term: subject["term"])
end

courses.each do |course|
  c = Course.create(term: course["term"], name: course["name"], description: course["description"], code: course["code"])
  subjects = course["subjects"]
  subjects.each do |subject|
    CourseSubject.create(course: c, subject: Subject.find_by(subject_id: subject["id"]))
  end
end
