# Perkers - Employee Hapiness Made Simple
The app is in https://perkers.herokuapp.com/
![Alt Main Page](https://github.com/sarahkwak/Perkers/blob/master/app/assets/images/hero.png)

## This is a coding challenge for AnyPerk. 
### The challenge details 
- Creating Schemas
- TDD (Rspec)
- Render two users latest favorite perks
- Using popular gems like pagination
- Using location to find perks 
- Authentication 

### App Features

![Alt List](https://github.com/sarahkwak/Perkers/blob/master/app/assets/images/list.png)

- Rails App (Rails 4.2.1, Ruby 2.0.0p576)
- PostgreSQL database with db indexing
- [Git](https://github.com/sarahkwak/Perkers) for version control 
- Deployed in Heroku
- Authentication using Devise
- Google Map API for location search
- Faker for database seed
- Rspec for TDD
- Will_paginate for pagination 

### The Future Release

![Alt Main Page](https://github.com/sarahkwak/Perkers/blob/master/app/assets/images/middle.png)

1. Re-design the Schemas that doesn't require complecate database assess. For instance, the current design to look up category of perk goes through PerkCategory: 
PerkCategory.where(perk_id: 7)

This becomes really expensive to find a brand information from Favorite table.

2. Google Map Info Window - Implement Info window so user can click the info window to get perk information

3. Bug in Perk List - Currently, the perk detil will keep append if user keep clicking. When user click twice the detail shall be hidden.

4. RSpec - Test environment is set up but the RSpec hasn't been fully implemented. 
