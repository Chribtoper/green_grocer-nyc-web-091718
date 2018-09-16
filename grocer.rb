def consolidate_cart(cart)
hash = {}
  cart.each_with_index do |item, i|
    item.each do |product, data|
      if hash[product].nil?
        hash[product] = data
        hash[product][:count] = 1
      else
        hash[product][:count] += 1
      end
    end
  end
  hash
end

def apply_clearance(cart:[])
  clearance_cart = {}
  # code here
  cart.each do |food, info|
    clearance_cart[food] = {}
    if info[:clearance] == true
      clearance_cart[food][:price] = info[:price] * 4 / 5
    else
      clearance_cart[food][:price] = info[:price]
    end
    clearance_cart[food][:clearance] = info[:clearance]
    clearance_cart[food][:count] = info[:count]
  end
  clearance_cart
end

def checkout(cart, coupons)
  # code here
end
