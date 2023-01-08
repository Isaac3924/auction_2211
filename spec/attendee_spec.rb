require 'rspec'
require './lib/attendee'

RSpec.describe Attendee do
    describe "Iteration 1" do
        let(:attendee){ Attendee.new({name: 'Megan', budget: '$50'}) }

        it "#initializes" do
            expect(attendee).to be_a(Attendee)
        end

        it "can read attributes" do
            expect(attendee.name).to eq('Megan')
            expect(attendee.budget).to eq('$50')
        end
    end
end