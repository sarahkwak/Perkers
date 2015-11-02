* Perkers - Employee Hapiness Made Simple
** This is a coding challenge for AnyPerk. 
*** The challenge include 
- Creating Schemas
- TDD (Rspec)
- Render two users latest favorite perks
- Using popular gems like pagination
- Using location to find perks 

**The Future Release
1. Re-design the Schemas that doesn't require complecate database assess. For instance, the current design to look up category of perk goes through PerkCategory: 
PerkCategory.where(perk_id: 7)

This becomes really expensive to find a brand information from Favorite table:
PerkCategory.find(Favorite.where(perk_category_id: 3).first.id)

2. Google Map - Because of limited google map api call, curren