# minetest brewing

Adds brewing stations, used to brew potions and other alchemical concoctions. To
brew, a basic or advanced brewing station is used, with a cauldron, stirrer,
fuel, and vial to combine ingredients.

# brewing station

Combine ingredients with liquids to form new liquids.

```
    (stir) Stirrer  [S]  [I] Ingredient
    
    (pour) Cauldron [C]--[V] Vial (pour
                     ^ \_
    (heat) Fuel     [F]  [L] Filter (filter)
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

* Filter: charcoal, cotton, silk, wire mesh
* (filter) passes [C] through [F]

Fuels burn at different temperatures. Depending on the recipe a range of fuels
may work, or a specific fuel or sequence of fuels may be necessary.


# still

Distill liquids into more potent forms.

```
    Ingredient      [I][J][K]
                          [H] Hopper
    (heat) Fuel     [F]-->[V] Vial
```

* Ingredient: I,J,K are liquids, one from each stack will be distilled in each cycle

* Hopper: empty containers

* Fuel: stick, log, coal
* (heat) consumes 1 unit of [F], processes 1 of [I,J,K] and [H] into [V]


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


# license

Copyright (c) 2016  David Ulrich

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER
RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT
, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH
THE USE OR PERFORMANCE OF THIS SOFTWARE.
