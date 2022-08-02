require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

describe Recipe do

  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  describe 'initialize' do

    it "Recipe exists" do
      expect(@recipe1).to be_an_instance_of(Recipe)

    end

  end

  describe 'Recipe attributes' do
    it "Recipe has a name" do
      expect(@recipe1.name).to eq("Mac and Cheese")
    end
  end

  describe 'Recipe ingredients' do

    it "Recipe requires ingredients" do
      expect(@recipe1.ingredients_required).to eq({})
    end

    it "Recipe adds ingredients and amount" do
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient1, 4)
      @recipe1.add_ingredient(@ingredient2, 8)
      expect(@recipe1.ingredients_required).to eq({@ingredient1 => 6, @ingredient2 => 8})
    end

    it "Recipe lists the ingredients it needs" do
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient1, 4)
      @recipe1.add_ingredient(@ingredient2, 8)
      expect(@recipe1.ingredients).to eq([@ingredient1, @ingredient2])
    end
  end

  describe 'Iteration 3' do
    before :each do
      @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
      @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
      @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
      @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})

      @recipe1 = Recipe.new("Mac and Cheese")
      @recipe2 = Recipe.new("Cheese Burger")

      @recipe1.add_ingredient(ingredient1, 2)
      @recipe1.add_ingredient(ingredient2, 8)
      @recipe2.add_ingredient(ingredient1, 2)
      @recipe2.add_ingredient(ingredient3, 4)
      @recipe2.add_ingredient(ingredient4, 1)
    end
  end

end
