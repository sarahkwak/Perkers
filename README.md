# Perkers - Employee Hapiness Made Simple

![Alt Main Page](https://github.com/sarahkwak/Perkers/blob/master/app/assets/images/hero.png)

## This is a coding challenge for AnyPerk. 
### The challenge include 
- Creating Schemas
- TDD (Rspec)
- Render two users latest favorite perks
- Using popular gems like pagination
- Using location to find perks 
##The Future Release
1. Re-design the Schemas that doesn't require complecate database assess. For instance, the current design to look up category of perk goes through PerkCategory: 
PerkCategory.where(perk_id: 7)

This becomes really expensive to find a brand information from Favorite table.

![Alt List](https://github.com/sarahkwak/Perkers/blob/master/app/assets/images/list.png)

2. Google Map Info Window - Implement Info window so user can click the info window to get perk information

3. Bug in Perk List - Currently, the perk detil will keep append if user keep clicking. When user click twice the detail shall be hidden.

4. RSpec - Test environment is set up but the RSpec hasn't been fully implemented. 
![Alt Main Page](https://github.com/sarahkwak/Perkers/blob/master/app/assets/images/middle.png)