require_relative 'constants.rb'

# The superclass of all other entities
class Entity
  attr_reader :x, :y, :old_x, :old_y, :angle, :health, :is_destroyable, :is_destroyed, :is_ghost, :damage_per_hit

  # Class initializer
  # x = starting x position
  # y = starting y position
  # angle = starting angle
  # health = starting health
  # is_destroyable = indicates weither the object can be destroyed
  # is_ghost = indicates weither the object can be walked through
  # damage_per_hit = the amount of damage that the object takes
  def initialize (x, y, angle, health, is_destroyable, is_ghost, damage_per_hit)
    @x = x
    @y = y
    @old_x = x
    @old_y = y
    @angle = angle
    @health = health
    @is_destroyable = is_destroyable
    @is_destroyed = false
    @is_ghost = is_ghost
    @damage_per_hit = damage_per_hit
  end

  # Ran whenever the object is hit
  def hit (map)
    if @is_destroyable
      @health -= @damage_per_hit

      if @health <= 0
        @is_destroyed = true
        @is_ghost = true

        # Map should get updated automatically because ruby is pass by reference
      end
    end
  end

  # Ran whenever the map is updated. Used to update position data
  def update (map)

  end

  # Used when turning the map into a string. Each entity has their own number
  # returns "0"
  def to_number
    '0'
  end
end