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

def apply_coupons(cart:[], coupons:[])
  cart.keys.each do |item|
    coupons.each do |coupon|
      if item == coupon[:item] && cart[item][:count] >= coupon[:num]
        cart[item][:count] -= coupon[:num]
        if cart["#{coupon[:item]} W/COUPON"]
          cart["#{coupon[:item]} W/COUPON"][:count] += 1
        else
          cart["#{coupon[:item]} W/COUPON"] = {:price => coupon[:cost], :clearance => cart[item][:clearance], :count => 1}
        end
      end
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
