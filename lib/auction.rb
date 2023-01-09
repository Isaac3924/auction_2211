class Auction
    attr_reader :items

    def initialize
        @items = []
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

    def bidders
        all_items_bids = items.find_all do |item|
            item.bids != {}
        end

        all_bids = []

        all_items_bids.each do |item|
            item.bids.keys.each do |attendee|
                if all_bids.include?(attendee) == false
                    all_bids << attendee
                end
            end
        end

        all_bids
    end

    def bidder_info
        
    end
end