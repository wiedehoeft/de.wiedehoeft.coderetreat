package com.gildedrose.items;

import com.gildedrose.Item;

public class NormalItemCalculation extends QualityCalculation {
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
