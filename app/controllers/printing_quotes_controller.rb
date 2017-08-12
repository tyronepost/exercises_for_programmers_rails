class PrintingQuotesController < ApplicationController
  before_action :set_cache, only: [:index, :create, :destroy]

  def index
  end

  def create
    if params[:form][:quote].length > 1
      @cache.quote = params[:form][:quote]
    else
      flash[:quote] = "Quote field not populated"
    end
    if params[:form][:name].length > 1
      @cache.name = params[:form][:name]
    else
      flash[:name] = "Name field not populated"
    end
    redirect_to printing_quotes_url
  end

  def destroy
    @cache.quote = nil
    @cache.name = nil
    redirect_to printing_quotes_url
  end

  private
  def set_cache
    @cache = PrintingQuoteCache.get_instance
  end
end

class PrintingQuoteCache
  @@instance = PrintingQuoteCache.new

  attr_accessor :quote
  attr_accessor :name

  def self.get_instance
    @@instance
  end
end

