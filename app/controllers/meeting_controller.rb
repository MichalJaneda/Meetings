class MeetingController < ApplicationController
  before_action :authenticate_user!, only: %i[create new]
  expose_decorated(:meetings) { Meeting.all }

  def create
  end

  def new
  end

  def show
  end
end
