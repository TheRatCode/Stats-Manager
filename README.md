# Stats Manager
 Simple stats manager to help with creating games!
- Create an infinite number of entities based on an optional 16 stats.
- Add up to 16 tags to easily sort groups of entities.
- Save & Load stats and entities to .txt files in a JSON format.

## Contents
- [Using Stats Manager](#using-manager)
- [Using Saves](#using-saves)

# Using Stats Manager <a name="using-manager"></a>
Using the stats manager is very easy, and consists of four main rooms.

<img src="https://i.imgur.com/MjrRwQc.png" alt="Main Room" width="350"/>

### Create Stats
You can create up to 16 stats, that can be removed or edited at any time per entity.

<p float="left">
 <img src="https://i.imgur.com/1X1bqrM.png" alt="Stat Creation Room 1" width="350"/>
 <img src="https://i.imgur.com/fBFMHJZ.png" alt="Stat Creation Room 2" width="350"/>
 </p>

### Create Tags
Creating tags is the same as stats, but only 8 can be assigned to an entity at a time.

<p float="left">
 <img src="https://i.imgur.com/Y0CrQEB.png" alt="Tag Creation Room 1" width="350"/>
 <img src="https://i.imgur.com/m8DtFrW.png" alt="Tag Creation Room 2" width="350"/>
 </p>

### Creating Entities
To create an entity, you input a name, a sprite url link/directory link, all stat values, and select the appropriate tags, then click create.

<p float="left">
 <img src="https://i.imgur.com/7N93WbG.png" alt="Entity Creation Room 1" width="350"/>
 <img src="https://i.imgur.com/ER8uCD0.png" alt="Entity Creation Room 2" width="350"/>
 </p>

### View Entities
After creating entities, you can view them in pages of 9, and clicking on their images will take you to their information page.

<p float="left">
 <img src="https://i.imgur.com/lxTEXhz.png" alt="Entity Viewer Room 1" width="350"/>
 <img src="https://i.imgur.com/wk4X0od.png" alt="Entity Viewer Room 1" width="350"/>
 </p>

# Using Saves <a name="using-saves"></a>
If you would like to use the saved JSON formatted .txt files directly in your game the associated format is as follows:
All keys are integers as strings, and are enumerable from 0 to # to easily loop through all contents.

The main three maps are as follows, and contains maps as values:
| Key | Value |
| ------ | ------ |
| 0 | Stats Map |
| 1 | Entities Map |
| 2 | Tags Map |

### Stats Map
The stats map contains keys 0 to # and the associated values are the stats names.
| Key | Value |
| ------ | ------ |
| 0 | Stat 1 (Health) |
| 1 | Stat 2 (Armor) |
| # | ... |

### Entities Map
The entities map contains keys 0 to # and the associated values are the entities values as a map.
| Key | Value |
| ------ | ------ |
| 0 | Entity 1 |
| 1 | Entity 2 |
| # | ... |

The entity values map contains the name (0), sprite (1), tags (2), and all associated stats as a 1d 2-item array.
| Key | Value |
| ------ | ------ |
| 0 | Entity Name |
| 1 | Entity Sprite |
| 2 | ["Enemy", "Faction 1", "Grunt"]
| 3 | ["Health", 100] |
| 4 | ["Armor", 10] |
| # | ... |

### Tags Map
The tags map is identical in setup to the stats map, containing keys 0 to # and the associated values are the tags names
| Key | Value |
| ------ | ------ |
| 0 | Tag 1 (Enemy Faction 1) |
| 1 | Tag 2 (Enemy Faction 2) |
| # | ... |

Created using Gamemaker Studio 2!
