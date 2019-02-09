package com.gildedrose.items;

import com.gildedrose.Item;

public class NormalItem extends QualityItem {

    public NormalItem(String name, int sellIn, int quality) {
        super(name, sellIn, quality);
    }

    @Override
    public void updateQuality(Item item) {
        decreaseItemQuality(item);

        increaseSellIn(item);

        if (sellInReached(item)) {
            decreaseItemQuality(item);
        }
    }
}
