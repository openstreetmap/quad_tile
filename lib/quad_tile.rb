require "quad_tile/version"
require "quad_tile/quad_tile"

module QuadTile
  def self.tile_for_xy(x, y)
    t = 0

    16.times do
      t = t << 1
      t |= 1 unless (x & 0x8000).zero?
      x <<= 1
      t = t << 1
      t |= 1 unless (y & 0x8000).zero?
      y <<= 1
    end

    t
  end

  def self.iterate_tiles_for_area(bbox)
    tiles = tiles_for_area(bbox)
    first = last = nil

    tiles.sort.each do |tile|
      if last.nil?
        first = last = tile
      elsif tile == last + 1
        last = tile
      else
        yield first, last

        first = last = tile
      end
    end

    yield first, last unless last.nil?
  end

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
