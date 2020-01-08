class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end


  def single_hash(recipe)
    # trying to create the first element in the array for summary
    { :name => recipe.name,
      :details => {:ingredients =>
        [:ingredient => recipe.ingredients_required],
                :total_calories => recipe.total_calories}
    }
  end

  def summary
    #use single has to create an array with every recipe and the hash info
    (single_hash)
  end
end
