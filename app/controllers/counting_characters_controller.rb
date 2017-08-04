require_relative '../../app/services/repository'

class CountingCharactersController < ApplicationController
  def index
    # repo = Repository.get_instance
    # @output = repo.cache
  end

  def create
    input = params[:form][:input]
    # repo = Repository.get_instance
    # repo.cache = input
    @output = input
    respond_to do |format|
      # format.html { redirect_to counting_characters_url }
      format.js
    end
  end
end


