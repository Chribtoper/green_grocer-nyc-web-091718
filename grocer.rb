def consolidate_cart(cart)
  cart.collect do |item, data|
    data.collect do |attribute, value|
      if attribute[:count].nil?
        attribute[:count] = 1
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
