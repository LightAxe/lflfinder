class LibrariesController < ApplicationController
  def new
  end

  def create
    render plain: params[:librarie].inspect
  end
end
