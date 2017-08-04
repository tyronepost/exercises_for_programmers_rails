class Repository
  @@instance = Repository.new
  attr_accessor :cache

  def self.get_instance
    @@instance
  end
end