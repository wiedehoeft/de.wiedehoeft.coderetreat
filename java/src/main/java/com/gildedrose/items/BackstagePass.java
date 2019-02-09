package com.gildedrose.items;

import com.gildedrose.Item;

public class BackstagePass extends QualityItem {

    public BackstagePass(int sellIn, int quality) {
        super("Backstage passes to a TAFKAL80ETC concert", sellIn, quality);
    }

    @Override
    public void updateQuality(Item item) {

        increaseSellIn(item);

        if (maxQualityNotReached(item)) {
            increaseItemQuality(item);
        }

        if (item.sellIn < 11 && maxQualityNotReached(item)) {
            increaseItemQuality(item);
        }

        if (item.sellIn < 6) {
            if (maxQualityNotReached(item)) {
                increaseItemQuality(item);
            }
        }

        if (item.sellIn < 0) {
            item.quality = 0;
        }
    }
}
