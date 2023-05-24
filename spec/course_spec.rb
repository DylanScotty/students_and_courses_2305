require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
    it "exist" do
        course = Course.new("Calculus", 2)

        expect(course).to be_an_instance_of(Course)
    end

    it "returns course details" do
        course = Course.new("Calculus", 2)

        expect(course.name).to eq("Calculus")
        expect(course.capacity).to eq(2)
        expect(course.students).to eq([])
    end
end