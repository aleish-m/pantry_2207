class Pantry

  attr_reader :stock

  def initialize
    @stock = Hash.new{0}
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.all? do |ingredient, quantity|
      stock.all? do |supply, amount|
        ingredient == supply && quantity <= amount
      end
    end

  end

end
