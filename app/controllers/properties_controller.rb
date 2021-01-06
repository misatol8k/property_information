class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times { @property.nearest_stations.build }
  end

  def show; end

  def edit
    @property.nearest_stations.build
  end

  def create
    @property = Property.new(property_params)
    if params[:back]
      render :new
    elsif @property.save
      redirect_to property_path(@property.id), notice: "登録しました！"
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to property_path(@property.id), notice: "更新しました！"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_url, notice: '削除しました！'
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(
      :property_name, :rent, :address, :age, :remark,
      nearest_stations_attributes: %i[
        route_name station_name minutes_on_foot id
      ]
    )
  end
end
