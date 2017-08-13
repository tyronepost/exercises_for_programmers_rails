require_relative '../../app/services/printing_quote_cache'

class PrintingQuotesController < ApplicationController
  before_action :set_cache, only: [:index, :create, :destroy]

  def index
  end

  def create
    @cache.name = form_params[:name]
    @cache.quote = form_params[:quote]
    redirect_to printing_quotes_url
  end


  def destroy
    @cache.clear
    redirect_to printing_quotes_url
  end

  private
  attr_accessor :errors

  def set_cache
    @cache = PrintingQuoteCache.get_instance
  end

  def form_params
    params.require(:form).permit(:name, :quote)
  end
end


