package com.gildedrose;

import com.gildedrose.items.QualityItem;

class GildedRose {
    final QualityItem[] items;

    GildedRose(QualityItem[] items) {
        this.items = items;
    }

    void updateQuality() {
        for (QualityItem item : items) {
            item.updateQuality(item);
        }
    }
}