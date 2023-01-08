require 'rspec'
require './lib/auction'
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
end