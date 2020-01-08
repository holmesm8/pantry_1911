class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    sum = 0
    @stock.each do |ingredient|
      sum += ingredient[-1]
    end
    sum
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def enough_ingredients_for?(recipe)
    enough = false
    recipe.ingredients_required.each do |ingredient, quantity|
      if quantity <= @stock[ingredient]
        enough = true
      else
      end
    end
    enough
  end
end
