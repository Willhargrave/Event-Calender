class PagesController < ApplicationController

  def home
    @plans = Plan.all
  end
end
