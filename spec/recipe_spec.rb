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

    xit "Recipe requires ingredients" do
      expect(@recipe1.ingredients_required).to eq({})
    end

    xit "Recipe adds ingredients and amount" do
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient1, 4)
      @recipe1.add_ingredient(@ingredient2, 8)
      expect(@recipe1.ingredients_required).to eq({@ingredient1 => 6, @ingredient2 => 8})
    end

    xit "Recipe lists the ingredients" do
      expect(@recipe1.ingredients).to eq([@ingredient1, @ingredient2])
    end
  end
end
