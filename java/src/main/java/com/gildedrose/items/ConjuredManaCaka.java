package com.gildedrose.items;

public class ConjuredManaCaka extends QualityItem {

    public ConjuredManaCaka(int sellIn, int quality) {
        super("Conjured Mana Cake", sellIn, quality);
    }

    @Override
    public void updateQuality() {
        decreaseItemQuality();
        decreaseItemQuality();

        decreaseSellIn();

        if (sellInReached()) {
            decreaseItemQuality();
            decreaseItemQuality();
        }
    }
}
