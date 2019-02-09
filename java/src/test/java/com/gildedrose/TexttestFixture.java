package com.gildedrose;

import com.gildedrose.items.*;

public class TexttestFixture {
    public static void main(String[] args) {
        System.out.println("OMGHAI!");

        QualityItem[] items = new QualityItem[]{
                new NormalItem("+5 Dexterity Vest", 10, 20), //
                new NormalItem("+5 Dexterity Vest", 0, 20), //
                new AgedBrie(2, 0), //
                new AgedBrie(0, 8), //
                new NormalItem("Elixir of the Mongoose", 5, 7), //
                new LegendaryItem("Sulfuras, Hand of Ragnaros", 0, 80), //
                new LegendaryItem("Sulfuras, Hand of Ragnaros", -1, 80),
                new BackstagePass(15, 20),
                new BackstagePass(10, 49),
                new BackstagePass(5, 49),
                // this conjured item does not work properly yet
                new NormalItem("Conjured Mana Cake", 3, 6)};

        GildedRose app = new GildedRose(items);

        int days = 2;
        if (args.length > 0) {
            days = Integer.parseInt(args[0]) + 1;
        }

        for (int i = 0; i < days; i++) {
            System.out.println("-------- day " + i + " --------");
            System.out.println("name, sellIn, quality");
            for (Item item : items) {
                System.out.println(item);
            }
            System.out.println();
            app.updateQuality();
        }
    }

}