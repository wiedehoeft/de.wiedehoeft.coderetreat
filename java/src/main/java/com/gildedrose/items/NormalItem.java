package com.gildedrose.items;

import com.gildedrose.Item;

public class NormalItem extends QualityItem {

    public NormalItem(String name, int sellIn, int quality) {
        super(name, sellIn, quality);
    }

    @Override
    public void updateQuality(Item item) {
        if (minQualityNotReached(item)) {
            decreaseItemQuality(item);
        }

        increaseSellIn(item);

        if (item.sellIn < 0) {
            if (minQualityNotReached(item)) {
                decreaseItemQuality(item);
            }
        }
    }
}
