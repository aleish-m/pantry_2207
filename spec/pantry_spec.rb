require './lib/ingredient.rb'
require './lib/pantry'

describe Pantry do

  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
  end

  describe 'initialize' do

    it "Pantry exists" do
      expect(@pantry).to be_an_instance_of(Pantry)

    end

  end

  describe 'stock' do
    it "Pantry has a stock" do
      expect(@pantry.stock).to eq({})
    end

    it "Pantry can check its stock" do
      expect(@pantry.stock_check(@ingredient1)).to eq(0)
    end

    it "Pantry can re-stock" do
      @pantry.restock(@ingredient1, 5)
      @pantry.restock(@ingredient1, 10)
      expect(@pantry.stock_check(@ingredient1)).to eq(15)
    end

    it "can re-stock multiple ingredients" do
      @pantry.restock(@ingredient2, 7)
      expect(@pantry.stock_check(@ingredient2)).to eq(7)
    end
  end

  describe 'Iteration 3' do
    before :each do
      @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
      @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
      @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
      @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})

      @recipe1 = Recipe.new("Mac and Cheese")
    end

    it "Pantry can check if it has ingredients for recipe" do
      @pantry.restock(@ingredient1, 10)
      @pantry.restock(@ingredient1, 10)
      expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(false)

      @pantry.restock(@ingredient2, 7)
      expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(false)

      @pantry.restock(@ingredient2, 1)
      expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(false)

    end

  end
end
