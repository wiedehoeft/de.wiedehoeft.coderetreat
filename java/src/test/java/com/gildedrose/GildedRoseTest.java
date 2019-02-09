package com.gildedrose;

import com.gildedrose.items.*;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EnumSource;

import static org.assertj.core.api.Assertions.assertThat;

class GildedRoseTest {

    @ParameterizedTest
    @EnumSource(value = ItemProvider.class)
    void agedBrie(ItemProvider itemProvider) {
        // Arrange
        GildedRose app = new GildedRose(new QualityItem[]{itemProvider.qualityItemGiven});

        // Act
        app.updateQuality();

        // Assert
        assertThat(app.items[0]).isEqualTo(itemProvider.qualityItemExpected);
    }

    enum ItemProvider {
        NORMAL_ITEM(new NormalItem("+5 Dexterity Vest", 15, 10), new NormalItem("+5 Dexterity Vest", 14, 9)),
        NORMAL_ITEM_ZERO_SELLIN(new NormalItem("+5 Dexterity Vest", 0, 10), new NormalItem("+5 Dexterity Vest", -1, 8)),
        NORMAL_ITEM_MIN_QUALITY(new NormalItem("+5 Dexterity Vest", 10, 0), new NormalItem("+5 Dexterity Vest", 9, 0)),
        AGED_BRIE_NORMAL(new AgedBrie(10, 10), new AgedBrie(9, 11)),
        AGED_BRIE_ZERO_SELLIN(new AgedBrie(0, 10), new AgedBrie(-1, 12)),
        AGED_BRIE_MAX_QUALITY(new AgedBrie(2, 50), new AgedBrie(1, 50)),
        LEGENDARY_ITEM(new LegendaryItem("Sulfuras, Hand of Ragnaros", 4, 50), new LegendaryItem("Sulfuras, Hand of Ragnaros", 4, 50)),
        BACKSTAGE_PASS_MORE_THAN_10DAYS(new BackstagePass(15, 20), new BackstagePass(14, 21)),
        BACKSTAGE_PASS_10DAYS(new BackstagePass(10, 20), new BackstagePass(9, 22)),
        BACKSTAGE_PASS_5DAYS(new BackstagePass(5, 20), new BackstagePass(4, 23)),
        BACKSTAGE_PASS_0DAYS(new BackstagePass(0, 20), new BackstagePass(-1, 0)),
        BACKSTAGE_PASS_MAX_QUALITY(new BackstagePass(3, 50), new BackstagePass(2, 50)),
        CONJURED_MANA_CAKE(new ConjuredManaCaka(5, 8), new ConjuredManaCaka(4, 6)),
        CONJURED_MANA_CAKE_MIN_QUALITY(new ConjuredManaCaka(5, 1), new ConjuredManaCaka(4, 0));

        QualityItem qualityItemGiven;
        QualityItem qualityItemExpected;

        ItemProvider(QualityItem qualityItemGiven, QualityItem qualityItemExpected) {
            this.qualityItemGiven = qualityItemGiven;
            this.qualityItemExpected = qualityItemExpected;
        }
    }

}