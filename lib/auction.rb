class Auction
    attr_reader :items,
                :bidders

    def initialize
        @items = []
        @bidders = []
    end

    def add_item(item)
        @items << item
    end

    def item_names
        item_names = []

        items.each do |item|
            item_names << item.name
        end

        item_names
    end

    def unpopular_items
        items.find_all do |item|
            item.bids == {}
        end
    end

    def potential_revenue
        potential_items = items.find_all do |item|
            item.bids != {}
        end

        true_potential= []

        potential_items.each do |item|
            true_potential << item.current_high_bid
        end

        true_potential.sum
    end
end