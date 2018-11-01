if brand.rating = high
  validate_price_reference(1.1)
elsif brand.rating = low
  validate_price_reference(0.9)
else
  validate_price_reference(1)
end

def suggest_price(n,y)
  price_suggestion = (price_reference - product_database.shipping_cost * n) * y
  price_original = price_suggestion
end

def validate_price_reference(m)
  if price_reference < 15
    suggest_price(0.75,m)
  elsif price_reference < 25
    suggest_price(0.775,m)
  elsif price_reference < 50
    suggest_price(0.8,m)
  elsif price_reference < 75
    suggest_price(0.825,m)
  elsif price_reference < 100
    suggest_price(0.85,m)
  elsif price_reference < 200
    suggest_price(0.875,m)
  elsif price_reference < 400
    suggest_price(0.9,m)
  elsif price_reference < 600
    suggest_price(0.925,m)
  else
    suggest_price(0.95,m)
  end 
end
