require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
    describe Gradebook do
        let(:instructor) { "Ox King" }
        let(:gradebook) { Gradebook.new(instructor) }

        it "returns the name of instructor" do
            expect(gradebook.instructor).to eq(instructor)
        end
    end


end