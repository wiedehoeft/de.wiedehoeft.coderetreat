package com.gildedrose.items;

public class NormalItem extends QualityItem {

    public NormalItem(String name, int sellIn, int quality) {
        super(name, sellIn, quality);
    }

    @Override
    public void updateQuality() {
        decreaseItemQuality();

        increaseSellIn();

        if (sellInReached()) {
            decreaseItemQuality();
        }
    }
}
