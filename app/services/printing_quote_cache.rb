class PrintingQuoteCache
  @@instance = PrintingQuoteCache.new

  attr_accessor :quote
  attr_accessor :name

  def self.get_instance
    @@instance
  end

  def quote_valid?
    quote.length > 0 if !quote.nil?
  end

  def name_valid?
    name.length > 0 if !name.nil?
  end

  def clear
    @quote = nil
    @name = nil
  end
end
