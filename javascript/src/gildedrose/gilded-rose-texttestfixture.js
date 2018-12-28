var {Shop, Item} = require('./gilded-rose.js');

function run() {
    console.log("OMGHAI");

    var items = [
        new Item("+5 Dexterity Vest", 10, 20),
        new Item("Aged Brie", 2, 0),
        new Item("Elixir of the Mongoose", 5, 7), //
        new Item("Sulfuras, Hand of Ragnaros", 0, 80), //
        new Item("Sulfuras, Hand of Ragnaros", -1, 80),
        new Item("Backstage passes to a TAFKAL80ETC concert", 15, 20),
        new Item("Backstage passes to a TAFKAL80ETC concert", 10, 49),
        new Item("Backstage passes to a TAFKAL80ETC concert", 5, 49),
        // this conjured item does not work properly yet
        new Item("Conjured Mana Cake", 3, 6)
    ];
    const gildedRose = new Shop(items);

    var days = 2;
    for (i = 0; i < days; i++) {
        console.log("-------- day " + i + " --------");
        console.log("name, sellIn, quality");
        items.forEach(function (item) {
            console.log(item);
        });
        console.log(" ");
        gildedRose.updateQuality();
    }

}

describe("Gilded Rose", function () {
    it("should run application to show functionality", function () {
        run();
    });
});

