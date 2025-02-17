class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show ]

  def index
    render 'service_pages/index'
    @services = Service.all
  end

  def show
    @service_variants = @service.service_variants
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end
end
