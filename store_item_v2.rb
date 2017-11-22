# class Item
#   def initialize (input_item_name, input_item_color, input_item_origin, input_item_price)

#     @item_name = input_item_name
#     @item_color = input_item_color
#     @item_origin = input_item_origin
#     @item_price = input_item_price
#   end

#   def item_name
#     @item_name
#   end

#   def item_color
#     @item_color
#   end

#   def item_origin
#     @item_origin
#   end

#   def item_price
#     @item_price
#   end

#   def print_info
#     "The #{item_name} is #{item_color}. It is from #{item_origin} and costs $#{item_price} per pound."
#   end
# end

#   item1 = Item.new("orange", "orange", "florida", "0.50")

#   p item1.print_info

class Item
  def initialize (input_item_name, input_item_color, input_item_origin, input_item_price)

    @item_name = input_item_name
    @item_color = input_item_color
    @item_origin = input_item_origin
    @item_price = input_item_price
  end