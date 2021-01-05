class Property < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true,
  reject_if: proc { |attributes| attributes['station_name'].blank? }
end
