require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'

describe CookBook do

  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
  end

  describe 'initialize' do

    it "CookBook exists" do
      expect(@cookbook).to be_an_instance_of(CookBook)
    end

  end

  describe 'CookBook recipes' do

    it "CookBook lists the recipes it has" do
      expect(@cookbook.recipes).to eq([])
    end

    it "CookBook adds recipes" do
      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)
      expect(@cookbook.recipes).to eq([@recipe1, @recipe2])
    end

  end
end
