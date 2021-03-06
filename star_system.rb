class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    planets.map {|planet| planet.name}
  end

  def get_planet_by_name(name)
    planets.find { |planet| planet.name == name}
  end

  def get_largest_planet
    planets.max_by { |planet| planet.diameter}
  end

  def get_smallest_planet
    planets.min_by { |planet| planet.diameter}
  end

  def get_planets_with_no_moons
    planets.select { |planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(n)
    moony_planets = planets.select { |planet| planet.number_of_moons > n}
    moony_planets.map {|moony_planet| moony_planet.name}
  end

  def get_number_of_planets_closer_than(n)
    closy_planets = planets.select { |planet| planet.distance_from_sun < n}
    closy_planets.length()
  end

  def get_total_number_of_moons
    planets.reduce(0) { |total, planet| total + planet.number_of_moons}
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    sorted_by_dist = planets.sort_by { |planet| planet.distance_from_sun}
    sorted_by_dist.map {|planet| planet.name}
  end

  def get_planet_names_sorted_by_size_decreasing
    sorted_by_size = planets.sort { |planet1, planet2| planet2.diameter <=> planet1.diameter}
    sorted_by_size.map {|planet| planet.name}
  end



end
