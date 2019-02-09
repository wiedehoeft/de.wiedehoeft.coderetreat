package com.gildedrose.items;

import com.gildedrose.Item;

import java.util.Objects;

public abstract class QualityItem extends Item {

    private static final int MIN_QUALITY = 0;
    private static final int MAX_QUALITY = 50;

    QualityItem(String name, int sellIn, int quality) {
        super(name, sellIn, quality);
    }

    public abstract void updateQuality(Item item);

    void increaseSellIn(Item item) {
        item.sellIn--;
    }

    void increaseItemQualityIfMaxNotReached(Item item) {
        if (maxQualityNotReached(item)) {
            item.quality++;
        }
    }

    private boolean maxQualityNotReached(Item item) {
        return item.quality < MAX_QUALITY;
    }

    boolean sellInReached(Item item) {
        return item.sellIn < 0;
    }

    void decreaseItemQuality(Item item) {
        if (minQualityNotReached(item)) {
            item.quality--;
        }
    }

    private boolean minQualityNotReached(Item item) {
        return item.quality > MIN_QUALITY;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Item item = (Item) o;
        return sellIn == item.sellIn &&
                quality == item.quality &&
                Objects.equals(name, item.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, sellIn, quality);
    }
}
