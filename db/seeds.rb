# 50.times { brand = Brand.create([name: Faker::Company.name, location: Faker::Address.postcode, perk_id: rand(50)]) }
# 50.times { perk = Perk.create([details: Faker::Commerce.product_name])}
# 20.times { category = Category.create([name: Faker::Commerce.department(1)]) }
# 10.times { perk_category = PerkCategory.create([perk_id: rand(50), category_id: rand(20)]) }
# favorite = Favorite.create([user_id: 1, perk_category_id: rand(10)])

# for i in 1..(Brand.count-1)
#   brand = Brand.find(i)
#   brand.update(image: Faker::Avatar.image)
# end 