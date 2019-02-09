package com.gildedrose.items;

import com.gildedrose.Item;

public class AgedBrie extends QualityItem {

    public AgedBrie(int sellIn, int quality) {
        super("Aged Brie", sellIn, quality);
    }

    @Override
    public void updateQuality(Item item) {

        increaseSellIn(item);

        if (maxQualityNotReached(item)) {
            increaseItemQuality(item);
        }

        if (item.sellIn < 0) {
            if (maxQualityNotReached(item)) {
                increaseItemQuality(item);
            }

        }
    }
}
