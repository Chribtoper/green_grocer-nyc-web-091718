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

def apply_coupons(cart, coupons)
hash = {}
  cart.each do |product, data|
    hash[product] = data
    if product == coupons[:item]
      hash[product][:count] -= coupons[:num]
      coupon = "#{product} W/COUPON"
      hash[coupon][:price] = coupons[:cost]
      hash[coupon][:clearance] = true
      hash[coupon][:count] = coupons[:num]
    end
  end
  hash
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
