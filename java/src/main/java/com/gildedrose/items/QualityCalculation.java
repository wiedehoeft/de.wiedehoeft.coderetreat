package com.gildedrose.items;

import com.gildedrose.Item;

abstract class QualityCalculation {

    public abstract void updateQuality(Item item);

    void increaseSellIn(Item item) {
        item.sellIn--;
    }

    boolean minQualityNotReached(Item item) {
        return item.quality > 0;
    }

    boolean maxQualityNotReached(Item item) {
        return item.quality < 50;
    }

    void increaseItemQuality(Item item) {
        item.quality++;
    }

    void decreaseItemQuality(Item item) {
        item.quality--;
    }
}
