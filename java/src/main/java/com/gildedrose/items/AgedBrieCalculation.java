package com.gildedrose.items;

import com.gildedrose.Item;

public class AgedBrieCalculation extends QualityCalculation {
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
