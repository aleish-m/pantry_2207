require './lib/ingredient.rb'

describe Ingredient do

  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
  end

  describe 'initialize' do

    it "Ingredient exists" do
      expect(@ingredient1).to be_an_instance_of(Ingredient)
    end

  end

  describe 'attributes' do
    it "Ingredient has a name" do
      expect(@ingredient1.name).to eq("Cheese")
    end

    it "Ingredient has a unit" do
      expect(@ingredient1.unit).to eq("oz")
    end

    it "Ingredient has a calories" do
      expect(@ingredient1.calories).to eq(50)
    end
  end
end
