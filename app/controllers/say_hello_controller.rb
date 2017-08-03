class SayHelloController < ApplicationController
  def new
  end

  def show
    @name = SayHello.get_instance.name
    logger.info "Say hello #{@name} "
  end

  def create
    @name = params[:form][:name]
    SayHello.get_instance.name = @name
    redirect_to say_hello_show_path
  end
end

class SayHello
  @@instance = SayHello.new

  attr_accessor :name
  def self.get_instance
    @@instance
  end
end
