class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @library = Library.new(library_params)

    @library.save
    redirect_to @library
  end

  def update
  end

  def destroy
  end

  private
    def library_params
      params.require(:library).permit(:name, :description)
    end
end
