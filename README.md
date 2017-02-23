# Tournament DB
The Udacity Tournament DB project is aimed at helping you get an understanding of relational databases by creating a python and psql db.

## Modules
There are three main modules in this project:

1. ```tournament.py``` This module is where all your db queries will go and where you call the psql db.
2. ```tournament.sql``` This is where you can put your psql commands. **This is optional**, you can also enter these manually in the vm by using the ```psql``` command.
3. ```tournament_test.py``` This file will test your db and queries to ensure we get the desired results.

## Installation
There is no UI for this project.

You need the Udacity vagrant build from [Udacity GitHub](https://github.com/udacity/fullstack-nanodegree-vm)

You can test the program by running ```python tournament_test.py```

## Output
If your db and app code is okay you will get a success message in terminal:

```1. countPlayers() returns 0 after initial deletePlayers() execution.```
```2. countPlayers() returns 1 after one player is registered.```
```3. countPlayers() returns 2 after two players are registered.```
```4. countPlayers() returns zero after registered players are deleted.```
```5. Player records successfully deleted.```
```6. Newly registered players appear in the standings with no matches.```
```7. After a match, players have updated standings.```
```8. After match deletion, player standings are properly reset.```
```9. Matches are properly deleted.```
```10. After one match, players with one win are properly paired.```
```Success!  All tests pass!```
