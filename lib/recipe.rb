class Recipe

  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, quantity)
    @ingredients_required[ingredient] = quantity
  end

  def amount_required(ingredient)
    @ingredients_required[ingredient]
  end

  def total_calories
    sum = 0
    @ingredients_required.each do |ingredient|
      sum += ingredient[0].calories * ingredient[-1]
    end
    sum
  end
end
