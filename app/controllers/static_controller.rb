class StaticController < ApplicationController
  before_action :set_keys, only: [:search, :recent]

  def home

  end

  def search

  end

  def recent

  end



  private

  def set_keys
    FlickRaw.api_key = ENV['flickr_key']
    FlickRaw.shared_secret = ENV['flickr_secret']
  end
end
