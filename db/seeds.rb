zip_code = [94102, 94103, 94104, 94105, 94107, 94108, 94109, 94110, 94111, 94112, 94114, 94115, 94116, 94117, 94118, 94121, 94122, 94123, 94124, 94127, 94129, 94130, 94131, 94132, 94133, 94134, 94158,94089, 95002, 95013, 95050, 95054, 95110, 95111, 95112, 95113, 95116, 95118, 95119, 95120, 95121, 95122, 95123, 95126, 95129, 95130, 95131, 95134, 95135, 95136, 95138, 95139, 95140, 95148]

50.times { perk = Perk.create([details: Faker::Commerce.product_name+" the discount rate is "+rand(100)+"%"])}
for i in 1..50
  brand = Brand.create([name: Faker::Company.name, location: zip_code[i], perk_id: i, image: Faker::Avatar.image)
end
20.times { category = Category.create([name: Faker::Commerce.department(1)]) }
for i in 1..50
  perk_category = PerkCategory.create(perk_id: i, category_id: rand(20))
end
40.times { perk_category = PerkCategory.create([perk_id: rand(50), category_id: rand(20)]) }
20.times {favorite = Favorite.create([user_id: rand(3), perk_category_id: rand(90)]) }
