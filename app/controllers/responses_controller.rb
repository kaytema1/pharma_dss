class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @responses = Response.all
    respond_with(@responses)
  end

  def show
    respond_with(@response)
  end

  def new
    @response = Response.new
    respond_with(@response)
  end

  def edit
  end

  def create
    @response = Response.new(response_params)
    @response.save
    respond_with(@response)
  end

  def update
    @response.update(response_params)
    respond_with(@response)
  end

  def destroy
    @response.destroy
    respond_with(@response)
  end

  private
    def set_response
      @response = Response.find(params[:id])
    end

    def response_params
      params.require(:response).permit(:response, :comment)
    end
end
