require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'exists' do
      @category = Category.new
      @category.name = 'Fruit Trees'
      @product = Product.new
      @product.name = 'Apple Tree'
      @product.price_cents = '40000'
      @product.quantity = '10'
      @product.category =  @category
      expect(@product.valid?).to be true
    end
    it 'exists and has a price' do
      @category = Category.new
      @category.name = 'Berry Bush'
      @product = Product.new
      @product.name = 'Raspberry Bush'
      @product.price_cents = nil
      @product.quantity = '10'
      @product.category =  @category
      expect(@product[:price_cents]).to be_nil
      @product.price_cents = '12456'
      expect(@product[:price_cents]).to be_truthy
    end
    it 'exists and has a name' do
      @category = Category.new
      @category.name = 'Berry Bush'
      @product = Product.new
      @product.category =  @category
      expect(@product[:name]).to be_nil
      @product.name = 'Lars'
      expect(@product[:name]).to be_truthy
    end
    it 'exists and has a quantity' do
      @category = Category.new
      @category.name = 'Fruit Trees'
      @product = Product.new
      @product.name = 'Apple Tree'
      @product.price_cents = '40000'
      @product.quantity = nil
      @product.category =  @category
      expect(@product.quantity).to be_nil
      @product.quantity = '40'
      expect(@product.quantity).to be_truthy
    end
    it 'exists and has a category' do
      @category = Category.new
      @category.name = 'category'
      @product = Product.new
      @product.name = 'help'
      expect(@product.category).to be_nil
      @product.category = @category
      expect(@product.category).to be_truthy
    end
  end
end