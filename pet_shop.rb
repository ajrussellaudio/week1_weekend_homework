def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, sale_value)
  shop[:admin][:total_cash] += sale_value
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_of_pets_sold)
  shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(shop)
  return shop[:pets].count
end

def pets_by_breed(shop, breed_search)
  stock = []
  for pet in shop[:pets]
    stock << pet if pet[:breed] == breed_search
  end
  return stock
end

def find_pet_by_name(shop, name_search)
  for pet in shop[:pets]
    return pet if pet[:name] == name_search
  end
  return nil
end

def remove_pet_by_name(shop, name_search)
  for pet in shop[:pets]
    shop[:pets].delete(pet) if pet[:name] == name_search
  end
end

def add_pet_to_stock(shop, pet)
  shop[:pets] << pet
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end

# OPTIONAL

def customer_can_afford_pet(customer, pet)
  if customer[:cash] > pet[:price]
    return true
  else
    return false
  end
end