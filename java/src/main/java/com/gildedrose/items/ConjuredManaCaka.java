package com.gildedrose.items;

import com.gildedrose.Item;

public class ConjuredManaCaka extends QualityItem {

    public ConjuredManaCaka(int sellIn, int quality) {
        super("Conjured Mana Cake", sellIn, quality);
    }

    @Override
    public void updateQuality(Item item) {
        decreaseItemQuality(item);
        decreaseItemQuality(item);

        increaseSellIn(item);

        if (item.sellIn < 0) {
            decreaseItemQuality(item);
            decreaseItemQuality(item);
        }
    }
}
