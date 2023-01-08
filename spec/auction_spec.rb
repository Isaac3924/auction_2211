require 'rspec'
require './lib/auction'
require './lib/attendee'
require './lib/item'

RSpec.describe Auction do
    describe "Iteration 1" do
        let(:auction){ Auction.new }

        let(:item1){ Item.new('Chalkware Piggy Bank') }
        let(:item2){ Item.new('Bamboo Picture Frame') }

        it "#initializes" do
            expect(auction).to be_a(Auction)
        end

        it "can read attributes" do
            expect(auction.items).to eq([])
        end

        it "#add_item" do
            auction.add_item(item1)
            auction.add_item(item2)

            expect(auction.items).to eq([item1, item2])
        end

        it "#item_names" do
            auction.add_item(item1)
            auction.add_item(item2)

            expect(auction.item_names).to eq(['Chalkware Piggy Bank', 'Bamboo Picture Frame'])
        end
    end

    describe "Iteration 2" do
        let(:item1){ Item.new('Chalkware Piggy Bank') }
        let(:item2){ Item.new('Bamboo Picture Frame') }
        let(:item3){ Item.new('Homemade Chocolate Chip Cookies') }
        let(:item4){ Item.new('2 Days Dogsitting') }
        let(:item5){ Item.new('Forever Stamps') }

        let(:attendee1){ Attendee.new({name: 'Megan', budget: '$50'}) }
        let(:attendee2){ Attendee.new({name: 'Bob', budget: '$75'}) }
        let(:attendee3){ Attendee.new({name: 'Mike', budget: '$100'}) }

        let(:auction){ Auction.new }

        before do 
            auction.add_item(item1)
            auction.add_item(item2)
            auction.add_item(item3)
            auction.add_item(item4)
            auction.add_item(item5)
        end
    end
end