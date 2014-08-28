class SectionController < ApplicationController

  def index
    @section = Section.all
    render('sections/index.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def create
    @section = Section.new(params[:section])
    if @section.save
      redirect_to("/sections/")
    else
      render('sections/new.html.erb')
    end
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

end
