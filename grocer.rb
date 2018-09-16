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
hash = {} #result
  cart.each do |product, data| #food, info
    coupons.each do |coupon|
      if product == coupon[:item] && data[:count] >= coupon[:num]
        data[:count] =  data[:count] - coupon[:num]
        if hash["#{product} W/COUPON"]
          hash["#{product} W/COUPON"][:count] += 1
        else
          hash["#{product} W/COUPON"] = {:price => coupon[:cost], :clearance => data[:clearance], :count => 1}
        end
      end
    end
    hash[product] = data
  end
  hash
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
