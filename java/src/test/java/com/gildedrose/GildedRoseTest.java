package com.gildedrose;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EnumSource;

import static org.assertj.core.api.Assertions.assertThat;

class GildedRoseTest {

    @ParameterizedTest
    @EnumSource(value = ItemProvider.class)
    void agedBrie(ItemProvider itemProvider) {
        Item[] items = new Item[]{
                new Item(itemProvider.itemName, itemProvider.sellIn, itemProvider.quality)
        };
        GildedRose app = new GildedRose(items);

        // Act
        app.updateQuality();

        // Assert
        assertThat(app.items[0].name).isEqualTo(itemProvider.expectedName);
        assertThat(app.items[0].sellIn).isEqualTo(itemProvider.expectedSellIn);
        assertThat(app.items[0].quality).isEqualTo(itemProvider.expectedQuality);
    }

    enum ItemProvider {
        NORMAL_ITEM("+5 Dexterity Vest", 15, 10, "+5 Dexterity Vest", 14, 9),
        NORMAL_ITEM_ZERO_SELLIN("+5 Dexterity Vest", 0, 10, "+5 Dexterity Vest", -1, 8),
        NORMAL_ITEM_MIN_QUALITY("+5 Dexterity Vest", 10, 0, "+5 Dexterity Vest", 9, 0),
        AGED_BRIE_NORMAL("Aged Brie", 10, 10, "Aged Brie", 9, 11),
        AGED_BRIE_ZERO_SELLIN("Aged Brie", 0, 10, "Aged Brie", -1, 12),
        AGED_BRIE_MAX_QUALITY("Aged Brie", 2, 50, "Aged Brie", 1, 50),
        LEGENDARY_ITEM("Sulfuras, Hand of Ragnaros", 4, 50, "Sulfuras, Hand of Ragnaros", 4, 50),
        BACKSTAGE_PASS_MORE_THAN_10DAYS("Backstage passes to a TAFKAL80ETC concert", 15, 20, "Backstage passes to a TAFKAL80ETC concert", 14, 21),
        BACKSTAGE_PASS_10DAYS("Backstage passes to a TAFKAL80ETC concert", 10, 20, "Backstage passes to a TAFKAL80ETC concert", 9, 22),
        BACKSTAGE_PASS_5DAYS("Backstage passes to a TAFKAL80ETC concert", 5, 20, "Backstage passes to a TAFKAL80ETC concert", 4, 23),
        BACKSTAGE_PASS_0DAYS("Backstage passes to a TAFKAL80ETC concert", 0, 20, "Backstage passes to a TAFKAL80ETC concert", -1, 0),
        BACKSTAGE_PASS_MAX_QUALITY("Backstage passes to a TAFKAL80ETC concert", 3, 50, "Backstage passes to a TAFKAL80ETC concert", 2, 50),
        ;

        String itemName;
        int sellIn;
        int quality;
        String expectedName;
        int expectedSellIn;
        int expectedQuality;

        ItemProvider(String name, int sellIn, int quality, String expectedName, int expectedSellIn, int expectedQuality) {
            this.itemName = name;
            this.sellIn = sellIn;
            this.quality = quality;
            this.expectedName = expectedName;
            this.expectedSellIn = expectedSellIn;
            this.expectedQuality = expectedQuality;
        }
    }

}