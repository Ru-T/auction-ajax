class BidsController < ApplicationController

  def create
    @bid = Bid.new(bid_params)
    @bid.save
    render partial 'bid', locals: {bid: bid}
    render partial 'highbid', locals: {bid: bid}
  end

  private
    # Only allow a trusted parameter "white list" through.
    def bid_params
      params.require(:bid).permit(:amount, :item_id)
    end
end
