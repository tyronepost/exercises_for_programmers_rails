class PrintingQuotesV2Controller < ApplicationController
  def index
    @quote = CachedQuote.get_quote
  end

  def create
    @quote = CachedQuote.get_quote
    @quote.quote = quote_params[:quote]
    @quote.name = quote_params[:name]
    if @quote.valid?
      redirect_to printing_quotes_v2_url
    else
      redirect_to root_url
    end
  end

  private
  def quote_params
    params.require(:quote).permit(:quote, :name)
  end
end

class CachedQuote
  @@quote = Quote.new

  def self.get_quote
    @@quote
  end
end
