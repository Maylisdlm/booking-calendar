class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :edit, :update, :destroy]

  def index
    @guides = Guide.all
  end

  def show
  end

  def new
    @guide = Guide.find(params[:guide_id])
    @guide = Guide.new # faire le formulaire
  end

  def edit
  end

  def create
    @guide = Guide.new(params[:guide])
    @guide.save
    redirect_to guide_path(@guide)
  end

  def update
    @guide.update(guide_params)
    redirect_to guide_path(@guide)
  end

  def destroy
    @guide.destroy
    redirect_to guide_path
  end

  private

  def guide_params
    params.require(:guide).permit(:name, :email, :city_id)
  end

  def set_guide
    @guide = Guide.find(params[:id])
  end
end
