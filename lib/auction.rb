require "date"

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
        attendees = []

        @items.each do |item|
          item.bids.keys.each do |attendee|
            attendees << attendee
          end
        end

        attendees.uniq #.uniq gets rid of duplicates

        # all_items_bids = items.find_all do |item|
        #     item.bids != {}
        # end

        # all_bids = []

        # all_items_bids.each do |item|
        #     item.bids.keys.each do |attendee|
        #         if all_bids.include?(attendee) == false
        #             all_bids << attendee
        #         end
        #     end
        # end

        # all_bids
    end

    def bidder_info
      bidder_info_hash = {}

        bidders.each do |attendee|
          bidder_info_hash[attendee] = {
            budget: attendee.budget,
            items: items_by_attendee(attendee)
          }
        end
      
      bidder_info_hash
        # bidder_info = Hash.new { |attendee, info| attendee[info] = { } }

        # all_items_bid_on = items.find_all do |item|
        #     item.bids != {}
        # end

        # all_items_bid_on.find_all do |item|
        #     item.bids.keys.each do |attendee|
        #         if 
        #     end
        # end

        # bidders.each do |bidder|
        #     require 'pry'; binding.pry
        #     bidder_info[bidder] = { budget: bidder.budget, items: [] }
        # end
    end

    def items_by_attendee(attendee)
      @items.select do |item|
        item.bids.keys.include? attendee
      end  
    end

    def generate_date
      Date.today
    end

    def date
        generate_date.strftime("%d/%m/%Y")
    end

    def close_auction
      closing_hash = {}

      items_by_highest_bid = @items.sort_by do |item|
        item.current_high_bid
      end.reverse

      items_by_highest_bid.each do |item|
        if item.bids.empty?
            closing_hash[item] = "Not Sold"
        else
            bidders_by_bid_amt_desc = item.bids.sort_by do |_, bid_amt|
                if attendee.budget >= bid_amt
                    attendee.budget -= bid_amt
                    closing_hash[item] = attendee
                    break
                end
            end
        end


      end
    end
end