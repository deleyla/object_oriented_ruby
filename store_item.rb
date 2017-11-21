orange = {
  "color" => "orange",
  "origin" => "florida",
  "price" => "0.50"
}

bell_pepper = {
  "color" => "green",
  "origin" => "mexico",
  "price" => "0.35"
}

onion = {
  "color" => "purple",
  "origin" => "texas",
  "price" => "1.25"
}

p "The #{orange ['color']} from #{orange ['origin']} is $#{orange ['price']} per lb."