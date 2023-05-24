require 'rspec'
require './lib/student'

RSpec.describe Student do
    it "exist" do
        student = Student.new({name: "Morgan", age: 21})
        expect(student).to be_an_instance_of(Student)
    end

    
  
end