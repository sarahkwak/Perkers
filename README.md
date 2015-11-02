* Perkers - Employee Hapiness Made Simple

![Main Page](/app/assets/images/hero.jpg)
** This is a coding challenge for AnyPerk. 
*** The challenge include 
- Creating Schemas
- TDD (Rspec)
- Render two users latest favorite perks
- Using popular gems like pagination
- Using location to find perks 
![Main Page](/app/assets/images/list.jpg)
**The Future Release
1. Re-design the Schemas that doesn't require complecate database assess. For instance, the current design to look up category of perk goes through PerkCategory: 
PerkCategory.where(perk_id: 7)

This becomes really expensive to find a brand information from Favorite table:
PerkCategory.find(Favorite.where(perk_category_id: 3).first.id)

2. Google Map Info Window - Implement Info window so user can click the info window to get perk information

3. Bug in Perk List - Currently, the perk detil will keep append if user keep clicking. When user click twice the detail shall be hidden.

4. RSpec - Test environment is set up but the RSpec hasn't been fully implemented. 
![Main Page](/app/assets/images/middle.jpg)