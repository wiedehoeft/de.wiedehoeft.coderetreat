package com.gildedrose.items;

import com.gildedrose.Item;

public class LegendaryItem extends QualityItem {

    public LegendaryItem(String name, int sellIn, int quality) {
        super(name, sellIn, quality);
    }

    @Override
    public void updateQuality(Item item) {

    }
}
