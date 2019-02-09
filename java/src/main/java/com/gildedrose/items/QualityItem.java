package com.gildedrose.items;

import com.gildedrose.Item;

import java.util.Objects;

public abstract class QualityItem extends Item {

    private static final int MIN_QUALITY = 0;
    private static final int MAX_QUALITY = 50;

    QualityItem(String name, int sellIn, int quality) {
        super(name, sellIn, quality);
    }

    public abstract void updateQuality();

    void increaseSellIn() {
        sellIn--;
    }

    void increaseItemQualityIfMaxNotReached() {
        if (maxQualityNotReached()) {
            quality++;
        }
    }

    private boolean maxQualityNotReached() {
        return quality < MAX_QUALITY;
    }

    boolean sellInReached() {
        return sellIn < 0;
    }

    void decreaseItemQuality() {
        if (minQualityNotReached()) {
            quality--;
        }
    }

    private boolean minQualityNotReached() {
        return quality > MIN_QUALITY;
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
