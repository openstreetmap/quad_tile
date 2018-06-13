require "quad_tile/version"
require "quad_tile/quad_tile"

module QuadTile
  def self.sql_for_area(bbox, prefix)
    sql = []
    single = []

    iterate_tiles_for_area(bbox) do |first, last|
      if first == last
        single.push(first)
      else
        sql.push("#{prefix}tile BETWEEN #{first} AND #{last}")
      end
    end

    sql.push("#{prefix}tile IN (#{single.join(',')})") unless single.empty?

    "( " + sql.join(" OR ") + " )"
  end

  private_class_method :tile_for_xy, :iterate_tiles_for_area
end
