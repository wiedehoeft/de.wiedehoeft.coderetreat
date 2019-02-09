package com.gildedrose;

class GildedRose {
    private static final String BACKSTAGE_PASS = "Backstage passes to a TAFKAL80ETC concert";
    private static final String LEGENDARY_ITEM_SULFURAS = "Sulfuras, Hand of Ragnaros";
    private static final String AGED_BRIE = "Aged Brie";

    Item[] items;

    GildedRose(Item[] items) {
        this.items = items;
    }

    void updateQuality() {
        for (int i = 0; i < items.length; i++) {
            handleBackstagePass(i);
            handleAgedBrie(i);

            if (noBackStagePass(i) && noAgedBrie(i) && noLegendaryItem(i)) {
                handleOtherItems(i);
            }
        }
    }

    private boolean noBackStagePass(int i) {
        return !items[i].name.equals(BACKSTAGE_PASS);
    }


    private boolean noAgedBrie(int i) {
        return !items[i].name.equals(AGED_BRIE);
    }


    private boolean noLegendaryItem(int i) {
        return !items[i].name.equals(LEGENDARY_ITEM_SULFURAS);
    }

    private void handleOtherItems(int i) {
        if (minQualityNotReached(items[i])) {
            decreaseItemQuality(i);
        }

        increaseSellIn(i);

        if (items[i].sellIn < 0) {
            if (minQualityNotReached(items[i])) {
                decreaseItemQuality(i);
            }
        }
    }

    private void handleAgedBrie(int i) {
        if (items[i].name.equals(AGED_BRIE)) {

            increaseSellIn(i);

            if (maxQualityNotReached(items[i])) {
                increaseItemQuality(i);
            }

            if (items[i].sellIn < 0) {
                if (maxQualityNotReached(items[i])) {
                    increaseItemQuality(i);
                }
            }
        }
    }

    private void handleBackstagePass(int i) {
        if (items[i].name.equals(BACKSTAGE_PASS)) {

            increaseSellIn(i);

            if (maxQualityNotReached(items[i])) {
                increaseItemQuality(i);
            }

            if (items[i].sellIn < 11 && maxQualityNotReached(items[i])) {
                increaseItemQuality(i);
            }

            if (items[i].sellIn < 6) {
                if (maxQualityNotReached(items[i])) {
                    increaseItemQuality(i);
                }
            }

            if (items[i].sellIn < 0) {
                items[i].quality = 0;
            }
        }
    }

    private void increaseSellIn(int i) {
        items[i].sellIn = items[i].sellIn - 1;
    }

    private boolean minQualityNotReached(Item item) {
        return item.quality > 0;
    }

    private boolean maxQualityNotReached(Item item) {
        return item.quality < 50;
    }

    private void increaseItemQuality(int i) {
        items[i].quality = items[i].quality + 1;
    }

    private void decreaseItemQuality(int i) {
        items[i].quality = items[i].quality - 1;
    }
}