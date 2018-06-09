require "bundler/setup"
require "quad_tile"
require "minitest/autorun"
require "minitest/pride"

class BoundingBox
  attr_reader :min_lon, :min_lat, :max_lon, :max_lat

  def initialize(min_lon, min_lat, max_lon, max_lat)
    @min_lon = min_lon.to_f unless min_lon.nil?
    @min_lat = min_lat.to_f unless min_lat.nil?
    @max_lon = max_lon.to_f unless max_lon.nil?
    @max_lat = max_lat.to_f unless max_lat.nil?
  end
end
