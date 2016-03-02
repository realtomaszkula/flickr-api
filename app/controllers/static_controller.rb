class StaticController < ApplicationController
  def search
    set_keys
  end

  def recent

  end

  private

  def set_keys
    FlickRaw.api_key = ENV['flickr_key']
    FlickRaw.shared_secret = ENV['flickr_secret']
  end
end
