require 'rspec'
require './lib/item'

RSpec.describe Item do
    describe "Iteration 1" do
        let(:item1){ Item.new('Chalkware Piggy Bank') }
        let(:item2){ Item.new('Bamboo Picture Frame') }

        it "#initializes" do
            expect(item1).to be_a(Item)
            expect(item2).to be_a(Item)
        end
    end
end