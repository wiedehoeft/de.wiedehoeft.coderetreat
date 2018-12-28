package com.gildedrose;

public enum ItemProvider {
    AGED_BRIE_NORMAL("Aged Brie", 10, 10, "Aged Br", 10, 10),

    private String itemName;
    private int sellIn;
    private int quality;
    private String expectedName;
    private int expectedSellIn;
    private int expectedQuality;

    ItemProvider(String name, int sellIn, int quality, String expectedName, int expectedSellIn, int expectedQuality) {
        this.itemName = name;
        this.sellIn = sellIn;
        this.quality = quality;
        this.expectedName = expectedName;
        this.expectedSellIn = expectedSellIn;
        this.expectedQuality = expectedQuality;
    }

    public String getItemName() {
        return itemName;
    }

    public int getSellIn() {
        return sellIn;
    }

    public int getQuality() {
        return quality;
    }

    public String getExpectedName() {
        return expectedName;
    }

    public int getExpectedQuality() {
        return expectedQuality;
    }

    public int getExpectedSellIn() {
        return expectedSellIn;
    }
    }
