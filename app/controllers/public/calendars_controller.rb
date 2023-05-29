class Public::CalendarsController < ApplicationController
  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    @calendar.save
    redirect_to root_path
  end

  def index
    @calendars = Calendar.all
    @calendar = Calendar.new
  end

  def show
    @calendar = Calendar.find(params[:id])
  end

  def edit
    @calendar = Calendar.find(params[:id])
  end

  def update
    @calendar = Calendar.find(params[:id])
    if @calendar.update(calendar_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @calendar = Calendar.find(params[:id])
    @calendar.destroy
    redirect_to root_path
  end

  private
  def calendar_params
    params.require(:calendar).permit(:title, :body, :start_time)
  end

end
