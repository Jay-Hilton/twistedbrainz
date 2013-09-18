class SiteController < ApplicationController
  def index
    @home_active = true
  end

  def about
    @about_active = true
  end

  def video
    @video_active = true
  end
end
