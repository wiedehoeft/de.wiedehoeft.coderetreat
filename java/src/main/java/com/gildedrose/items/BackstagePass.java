package com.gildedrose.items;

public class BackstagePass extends QualityItem {

    public BackstagePass(int sellIn, int quality) {
        super("Backstage passes to a TAFKAL80ETC concert", sellIn, quality);
    }

    @Override
    public void updateQuality() {

        decreaseSellIn();

        increaseItemQualityIfMaxNotReached();

        if (sellIn < 11) {
            increaseItemQualityIfMaxNotReached();
        }

        if (sellIn < 6) {
            increaseItemQualityIfMaxNotReached();
        }

        if (sellIn < 0) {
            quality = 0;
        }
    }
}
