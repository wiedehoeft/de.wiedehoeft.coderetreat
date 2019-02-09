package com.gildedrose.items;

public class AgedBrie extends QualityItem {

    public AgedBrie(int sellIn, int quality) {
        super("Aged Brie", sellIn, quality);
    }

    @Override
    public void updateQuality() {

        increaseSellIn();
        increaseItemQualityIfMaxNotReached();

        if (sellInReached()) {
            increaseItemQualityIfMaxNotReached();
        }
    }
}
