require 'rspec'
require './lib/attendee'

RSpec.describe Attendee do
    describe "Iteration 1" do
        let(:attendee){ Attendee.new({name: 'Megan', budget: '$50'}) }

        it "#initializes" do
            expect(attendee).to be_a(Attendee)
        end

        xit "can read attributes" do
            expect(item1.name).to eq('Chalkware Piggy Bank')
        end
    end
end