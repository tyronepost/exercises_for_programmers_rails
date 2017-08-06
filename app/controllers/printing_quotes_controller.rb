class PrintingQuotesController < ApplicationController
  before_action :set_cache, only: [:index, :create, :destroy]

  def index
  end

  def create
    @cache.quote = params[:form][:quote] if params[:form][:quote]
    @cache.name = params[:form][:name] if params[:form][:name]
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

