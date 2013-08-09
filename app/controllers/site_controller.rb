class SiteController < ApplicationController
  def index
    @home_active = true
  end

  def about
    @about_active = true
  end

  def downloads
    @downloads_active = true
  end
end
