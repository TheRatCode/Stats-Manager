# Stats Manager
 Simple stats manager to help with creating games!
- Create an infinite number of entities based on an optional 16 nameable stats.
- Add up to 16 tags to easily sort groups of entities.
- Save & Load stats and entities to .txt files in a JSON format.

# Using Saves
If you would like to use the saved JSON formatted .txt files directly in your game the associated format is as follows:
All keys are integers as strings, and are enumerable from 0 to # to easily loop through all contents.

The main three maps are as follows:
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

```sh
[PLACEHOLDER] the entity value map [2] will contain an array of associated tags when completed
```

The entity values map contains the name (0), sprite (1), and all associated stats as a 1d 2-item array.
| Key | Value |
| ------ | ------ |
| 0 | Entity Name |
| 1 | Entity Sprite |
| 2 | ["Health", 100] |
| 3 | ["Armor", 10] |
| # | ... |

### Tags Map
The tags map is identical in setup to the stats map, containing keys 0 to # and the associated values are the tags names
| Key | Value |
| ------ | ------ |
| 0 | Tag 1 (Enemy Faction 1) |
| 1 | Tag 2 (Enemy Faction 2) |
| # | ... |

Created using Gamemaker Studio 2!