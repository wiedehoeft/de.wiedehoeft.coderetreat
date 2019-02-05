# What you find in this project
The project is based on Guided Rose Kata from [Github](https://github.com/emilybache/GildedRose-Refactoring-Kata/tree/master/COBOL/mf)

The original source has modified, to enable the execution as a sub-module from a Main-Program.

It is located in GuildedRose.cbl. This file will can be compiled as a module and can be found in bin/ folder as dll and exe after compilation.

![CompileAsModule](./screenshots/GuildedRoseCompileAsModule.png)

Normally OpenCobolIDE will do this work, when it detect changes and the test classes are executed.

# How to use this project
The code was written with OpenCobolIDE. Download installer from [here](https://launchpad.net/cobcide/+download)

*Tested with Windows and Fedora28. In Fedora and possibly all UNIX-systems the installation
does not work, so please use Windows*

Just follow installation instruction, it will be installed as any Windows application, like Word or Excel.

After installation any of the COBOL-Sources can be opened.
Dependent from installation directory some changes in settings could be
neccessary (when default install directory was changed).

![Preferences](./screenshots/Preferences_Location.png)

See Edit => Preferences => Compiler.
The first five paths should fit to the installation directory of the
OpenCobolIDE.
Additionally the folder ccp has to be added to "Copybook paths" on same page.

![Settings](./screenshots/Settings.png)

The compiled modules are in a bin folder, in root of cloned directory.

![bin-folder](./screenshots/bin_folder_location.png)

# Start the application
First change to develop-branch!

To check what the production code does the GuildedRoseRunner.cbl program can be used; it just needs to be executed.

Module tests are located in GuildedRoseTest.cbl. This program can also be executed, it should finish with Return-Code 8 and a failing assertion.


# Guilded Rose description
After Terry and I came back from SCNA a few months back, we started a contest among the developers
here to solve simple katas in public and receive feedback from their peers on their solutions.
It was a fun little exercise that had a few weeks of popularity before the novelty wore off and
we all collectively let day jobs refocus us on other tasks.

Last week, Terry revived the contest with a bang. Below you will find his word for word challenge.
I took a few minutes and created a starter project that you can use to try the kata on your own.

You can find it here. I have included a basic project structure and testing tools including the
awesome Giles from coworker Jeff. If you want to play with Giles,
simply open a PowerShell console and execute the “watch.ps1” file at the solution root.
Start working through the problem and watch Giles instruct you on when you have a failing test.
It is very cool. I’ll have a demo video of it up later this week.

Here is the text of the kata:

Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location
in a prominent city ran by a friendly innkeeper named Allison.
We also buy and sell only the finest goods. Unfortunately, our goods are constantly degrading in
quality as they approach their sell by date. We have a system in place that updates our inventory for us.
It was developed by a no-nonsense type named Leeroy, who has moved on to new adventures.
Your task is to add the new feature to our system so that we can begin selling a new category of items.
First an introduction to our system:

All items have a SellIn value which denotes the number of days we have to sell the item
All items have a Quality value which denotes how valuable the item is
At the end of each day our system lowers both values for every item
Pretty simple, right? Well this is where it gets interesting:

Once the sell by date has passed, Quality degrades twice as fast
The Quality of an item is never negative
“Aged Brie” actually increases in Quality the older it gets
The Quality of an item is never more than 50
“Sulfuras”, being a legendary item, never has to be sold or decreases in Quality
“Backstage passes”, like aged brie, increases in Quality as it’s SellIn value approaches; Quality increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but Quality drops to 0 after the concert
We have recently signed a supplier of conjured items. This requires an update to our system:

“Conjured” items degrade in Quality twice as fast as normal items
Feel free to make any changes to the UpdateQuality method and add any new code as long as everything still works correctly. However, do not alter the Item class or Items property as those belong to the goblin in the corner who will insta-rage and one-shot you as he doesn’t believe in shared code ownership (you can make the UpdateQuality method and Items property static if you like, we’ll cover for you).
