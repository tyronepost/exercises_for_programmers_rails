require 'minitest/autorun'
require_relative '../../app/services/printing_quote_cache'

class PrintingQuoteCacheTest < Minitest::Test

  def setup
    @cache = PrintingQuoteCache.get_instance
  end

  def test_cache
    assert @cache
  end

  def test_quote
    assert !@cache.quote_valid?
    @cache.quote = "These are not the droids you are looking for"
    assert @cache.quote_valid?
  end

  def test_name
    assert !@cache.name_valid?
    @cache.name = "Obiwan Kenobi"
    assert @cache.name_valid?
  end

  def test_clear
    @cache.quote = "These are not the droids you are looking for"
    @cache.name = "Obiwan Kenobi"
    assert @cache.quote_valid?
    assert @cache.name_valid?

    @cache.clear
    assert !@cache.quote_valid?
    assert !@cache.name_valid?
  end
end