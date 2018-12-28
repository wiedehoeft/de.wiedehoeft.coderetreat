package com.gildedrose;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EnumSource;

import static org.assertj.core.api.Assertions.assertThat;

public class GildedRoseTest {

    @ParameterizedTest
    @EnumSource(value = ItemProvider.class)
    public void agedBrie(ItemProvider itemProvider) {
        Item[] items = new Item[]{
                new Item(itemProvider.getItemName(), itemProvider.getSellIn(), itemProvider.getQuality())
        };
        GildedRose app = new GildedRose(items);

        // Act
        app.updateQuality();

        // Assert
        assertThat(app.items[0].name).isEqualTo(itemProvider.getExpectedName());
        assertThat(app.items[0].quality).isEqualTo(itemProvider.getExpectedQuality());
        assertThat(app.items[0].sellIn).isEqualTo(itemProvider.getExpectedSellIn());
    }

    @Test
    public void agedBrieNoSellinDoublesQuality() {
        Item[] items = new Item[]{new Item("Aged Brie", 0, 10)};
        GildedRose app = new GildedRose(items);
        app.updateQuality();
        assertThat(app.items[0].name).isEqualTo("Aged Brie");
        assertThat(app.items[0].quality).isEqualTo(12);
        assertThat(app.items[0].sellIn).isEqualTo(-1);
    }
}