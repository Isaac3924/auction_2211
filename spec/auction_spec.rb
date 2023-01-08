require 'rspec'
require './lib/auctions'
require './lib/item'

RSpec.describe Auction do
    describe "Iteration 1" do
        let(:auction){ Auction.new }

        let(:item1){ Item.new('Chalkware Piggy Bank') }
        let(:item2){ Item.new('Bamboo Picture Frame') }

        xit "#initializes" do
            expect(auction).to be_a(Auction)
        end

        xit "can read attributes" do
            expect(auction.items).to eq([])
        end

        xit "#add_item" do
            auction.add_item(item1)
            auction.add_item(item2)

            expect(auction.items).to eq([item1, item2])
        end

        xit "#item_names" do
            auction.add_item(item1)
            auction.add_item(item2)

            expect(auction.item_names).to eq(['Chalkware Piggy Bank', 'Bamboo Picture Frame'])
        end
    end
end