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
c_num = coupons[:num]
c_val = coupons[:cost]
  cart.each do |product, data|
    hash[product] = data
    if product == coupons[:item]
      hash[product][:count] -= c_num.to_int
      coupon = "#{product} W/COUPON"
      hash[coupon][:price] = c_val.to_int
      hash[coupon][:clearance] = true
      hash[coupon][:count] = c_num.to_int
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
