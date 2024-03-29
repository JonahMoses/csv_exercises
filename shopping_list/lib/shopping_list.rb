require 'csv'
require_relative 'item'

class ShoppingList
  def initialize(filename)
    @filename = filename
  end

  def filename
    @filename
  end

  def items
    @items ||= build_items
  end

  private

  def build_items
    data.collect do |row|
      Item.new(row)
    end
  end

  def data
    CSV.open(filename, headers: true, header_converters: :symbol)
  end

end

