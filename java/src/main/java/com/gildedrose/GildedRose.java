package com.gildedrose;

import com.gildedrose.items.AgedBrieCalculation;
import com.gildedrose.items.BackstagePassCalculation;
import com.gildedrose.items.LegendaryItemCalculation;
import com.gildedrose.items.NormalItemCalculation;

class GildedRose {
    private static final String BACKSTAGE_PASS = "Backstage passes to a TAFKAL80ETC concert";
    private static final String LEGENDARY_ITEM_SULFURAS = "Sulfuras, Hand of Ragnaros";
    private static final String AGED_BRIE = "Aged Brie";

    final Item[] items;

    private final BackstagePassCalculation backstagePassCalculation;
    private final AgedBrieCalculation agedBrieCalculation;
    private final LegendaryItemCalculation legendaryItemCalculation;
    private final NormalItemCalculation normalItemCalculation;

    GildedRose(Item[] items) {
        this.items = items;
        this.backstagePassCalculation = new BackstagePassCalculation();
        this.agedBrieCalculation = new AgedBrieCalculation();
        legendaryItemCalculation = new LegendaryItemCalculation();
        normalItemCalculation = new NormalItemCalculation();
    }

    void updateQuality() {
        for (Item item : items) {
            switch (item.name) {
                case BACKSTAGE_PASS:
                    backstagePassCalculation.updateQuality(item);
                    break;

                case AGED_BRIE:
                    agedBrieCalculation.updateQuality(item);
                    break;

                case LEGENDARY_ITEM_SULFURAS:
                    legendaryItemCalculation.updateQuality(item);
                    break;

                default:
                    normalItemCalculation.updateQuality(item);
                    break;
            }
        }
    }
}