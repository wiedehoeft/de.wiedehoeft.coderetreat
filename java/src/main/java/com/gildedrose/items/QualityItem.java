package com.gildedrose.items;

import com.gildedrose.Item;

import java.util.Objects;

public abstract class QualityItem extends Item {

    QualityItem(String name, int sellIn, int quality) {
        super(name, sellIn, quality);
    }

    public abstract void updateQuality(Item item);

    void increaseSellIn(Item item) {
        item.sellIn--;
    }

    boolean minQualityNotReached(Item item) {
        return item.quality > 0;
    }

    boolean maxQualityNotReached(Item item) {
        return item.quality < 50;
    }

    void increaseItemQuality(Item item) {
        item.quality++;
    }

    void decreaseItemQuality(Item item) {
        item.quality--;
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
