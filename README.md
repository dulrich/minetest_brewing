# minetest brewing

Adds brewing stations, used to brew potions and other alchemical concoctions. To
brew, a basic or advanced brewing station is used, with a cauldron, stirrer,
fuel, and vial to combine ingredients.

# basic brewing station

```
	(stir) Stirrer  [S]  [I] Ingredient
	
	(pour) Cauldron [C]  [V] Vial (pour)
	
	(heat) Fuel     [F]
```

* Stirrer: wood, iron, steel, lead, silver, gold, clay, bone
* (stir) combines [I] into the current contents of [C]

* Cauldron: iron, lead, steel, silver, gold, clay, glass
* (pour) empties [C] into [V] if [V] is empty, otherwise nothing

* Fuel: stick, log, coal
* (heat) consumes 1 unit of [F], and raises [C] to the burn temp of [F] for the
burn-time of [F]

* Ingredient: varies, usually starts with a liquid

* Vial: glass, clay, leather, gourd, steel, silver
* (pour) empties [V] into [C] if [C] is empty, otherwise nothing

Fuels burn at different temperatures. Depending on the recipe a range of fuels
may work, or a specific fuel or sequence of fuels may be necessary.


# process (new health potion)

* place cauldron, fuel (wood log), stirrer (wood stick), vial of water
* (pour) vial into cauldron
* (heat) to burn a wood log
* place apple into [I]
* (stir) to combine apple into potion
* place mushroom_red into [I]
* (stir) to combine mushroom_red into potion
* place dye:red into [I]
* (stir) to combine dye:red into potion
* (pour) cauldron into vial
* remove vial, potion is done!


# machines to add

* juice press: {food} => {food} juice|oil (liquid)
* still: 3 x {food} juice => {food} wine
* still: 3 x {food} wine => {food} spirits
* cutting board: {food} => chopped {food}
