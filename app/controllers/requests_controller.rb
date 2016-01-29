class RequestsController < ApplicationController
  def index
    
  end

  def new
    @request = Request.new
    @managers = User.manager_users
  end

  def create
    @managers = User.manager_users
    @request = Request.new request_params
    @request.user = User.first
    binding.pry
    if @request.valid?
      @request.save!
      flash[:success] = "Request created successfully"
      redirect_to requests_path
    else
      render :new
    end
  end

  def show
  end

  private
  def request_params
    params.require(:request).permit :name, :due_date, :method, :description, :amount, :receiver_id, :request_type
  end
end
