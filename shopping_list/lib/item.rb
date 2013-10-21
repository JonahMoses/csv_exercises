class Item
  def initialize(attributes)
    @items = attributes
  end

  def name
    @items[:name]
  end

  def quantity
    @items[:quantity]
  end
end
