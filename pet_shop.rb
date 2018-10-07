def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def price_of(pet_shop)
  pet_shop[:pets][5][:price]
end


def pet_type(pet_shop)
  dogs = []
  for dog in pet_shop[:pets]
    if dog[:pet_type] == :dog
      dogs.push(dog)
    end
  end
  return dogs
end


def total_cost(pet_shop)
  result = 0
  for item in pet_shop[:pets]
    result = item[:price] + result
  end
  p result
  return result
end

def add_or_remove_cash(pet_shop, value)
 p total_cash(pet_shop) - 10
 pet_shop[:admin][:total_cash] = total_cash(pet_shop) - 10
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, value)
  pet_shop[:admin][:pets_sold] = pet_shop[:admin][:pets_sold] + 2
end


def stock_count(count)
  return count[:pets].count
end

def pets_by_breed(pet_shop, breed)
  dogs = []
  for dog in pet_shop[:pets]
    if dog[:breed] == breed
      dogs.push(dog)
    end
  end
  return dogs
end


def find_pet_by_name(pet_shop, name)
  result = nil
  for pet in pet_shop[:pets]
    if pet[:name] == name
      result = pet
    end
  end
  return result
end

def remove_pet_by_name(pet_shop, name)
  result = find_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(result)
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, value)
  customer[:cash] = customer[:cash] - 100
end

def customer_pet_count(count)
  count[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end
