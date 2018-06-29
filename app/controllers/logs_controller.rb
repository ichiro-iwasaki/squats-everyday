class LogsController < ApplicationController

  def index
    @logs = Log.all
  end

  def new
    @log = Log.new
  end

  def create
    Log.create(log_params)
    redirect_to :root
  end

  private
    def log_params
      params.require(:log).permit(:number)
    end

end
