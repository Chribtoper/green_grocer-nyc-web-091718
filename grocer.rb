def consolidate_cart(cart)
hash = {}
  cart.each do |item, data|
    data.each do |attribute, value|
      if hash[attribute].nil?
        hash[attribute][:count] = 1
      else
        attribute[:count] += 1
      end
    end
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
