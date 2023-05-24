require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
    describe Gradebook do
        let(:instructor) { "Ox King" }
        let(:gradebook) { Gradebook.new(instructor) }

        it "returns details of the gradebook" do 
            expect(gradebook.instructor).to eq(instructor)
            expect(gradebook.courses).to eq([])
        end

        it "#add_course" do
            course = Course.new('Calculus', 2)
            expect(gradebook.add_course(course)).to eq([course])
        end

        it "list_all_students" do
            course = Course.new('Calculus', 2)
            student1 = Student.new({name: 'Morgan', age: 21})
            student2 = Student.new({name: 'Jordan', age: 29})
            course.enroll(student1)
            course.enroll(student2)
            gradebook.add_course(course)
            expect(gradebook.list_all_students).to eq({ course => [student1, student2] })
        end

        it "#students_below(threshold)" do
            course = Course.new('Calculus', 3)
            student1 = Student.new({name: 'Morgan', age: 21})
            student2 = Student.new({name: 'Jordan', age: 29})
            student3 = Student.new({name: 'Gohan', age: 23})
            course.enroll(student1)
            course.enroll(student2)
            course.enroll(student3)
            gradebook.add_course(course)
            student1.log_score(80)
            student2.log_score(70)
            student3.log_score(90)
            threshold = 80
            expect(gradebook.students_below(threshold)).to eq([student2])
        end

    end


end