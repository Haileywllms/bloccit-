class TopicsController < ApplicationController

  def index
    # #11
      @topic = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:id])
  end
end
