class StaticController < ApplicationController
  include FlickrHelper
  before_action :set_keys, only: [:home, :search, :recent]

  def home
  end

  def search
    if params.has_key?(:search)
      urls = get_urls(photos_for(params[:search][:id]))
      groups_of_two =  urls.in_groups_of(2)
    end
  end

  private

  def set_keys
    FlickRaw.api_key = ENV['flickr_key']
    FlickRaw.shared_secret = ENV['flickr_secret']
  end

  def photos_for(user_id)
    flickr.people.getPublicPhotos(:user_id => "#{user_id}")
  end

  def get_urls(info)
    info.collect { |photo| FlickRaw.url_b(photo) }
  end

end
