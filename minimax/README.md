# Relatório

## Students: Bruna Carpes de Freitas, Larissa Gremelmaier Rosa, Maren Freland Arn, Raquel Cristina Schaly Behrens

The group used the framework [EasyAI](https://github.com/Zulko/easyAI), see further documentation [here](http://zulko.github.io/easyAI/), to develop our version of the Dots Game and use artificial inteligence to play against the computer, or observe the computer play with itself.

##

### But how does our Dots Game work?

You have a board with a certain amount of dots, for example, a 5x5 board with dots in each position, like this:

. . . . . 00 01 02 03 04
. . . . . 05 06 07 08 09
. . . . . 10 11 12 13 14
. . . . . 15 16 17 18 19
. . . . . 20 21 22 23 24

Therefore, you have to draw edges between the dots, to form boxes. Each box your edges form, will be a point for you. But all the edges of the box must be yours.

Our game uses AI that thinks 5 moves in advance (line 110 of /trail.py), and uses the [Negamax](https://en.wikipedia.org/wiki/Negamax) algorithm, which is a variant from **minimax** search, that relies on the zero-sum property of a two-player game.

So let's play!

##

### How do I execute the file?

You must have python3 installed in your computer.

Also, you will need easyAI installed. You can prompt the following command:

`sudo pip install easyAI`

Now you must prompt, in this directory:

`python3 trail.py`

Now you must choose an option between:

1 - Play with AI
2 - Observe 2 AIs play with each other
3 - Solve with iterative deepening (i.e. combine breadth-first search with depth-first search)

To see further meaning of iterative deepening of easyAI's function, please access easyAI [documentation](https://github.com/Zulko/easyAI).

##

## Choosing option 1: Play with AI

You are the player 2.

First you have to type the size of the board. We recommend 3.

Let's say you typed 3. You have the following board:

. . . 00 01 02
. . . 03 04 05
. . . 06 07 08

The player 1 will start (the AI).

Now it's your turn.

To choose an edge, if the edge is from 00 to 01, you should type:

`(0, 1)`

**Do not forget the space between ',' and the next number, in this case, '1'.**

And then you will be able to see your play in the terminal.

When you finish the game, the board will inform who won. If there is a tie, you lost.

##

## Choosing option 2: Observe 2 AIs play with each other

First you have to type the size of the board. We recommend 3.

Let's say you typed 3. You have the following board:

. . . 00 01 02
. . . 03 04 05
. . . 06 07 08

Now you can observe in the temrinal who won the game, and the moves of the players!

##

## Choosing option 3: Solve with iterative deepening

To see further meaning of iterative deepening of easyAI's function, please access easyAI [documentation](https://github.com/Zulko/easyAI).

But there, it says:

We obtain r=1, meaning that if both players play perfectly, the first player to play can always win (-1 would have meant always lose), d=10, which means that the wins will be in ten moves (i.e. 5 moves per player) or less, and m='3', which indicates that the first player's first move should be '3'.

Therefore, first you have to type the size of the board. We recommend 3.

Now you can observe r, d and m appearing in the terminal.

For a board of size 3x3, we have the following result:

d:2, a:0, m:(0, 1)
d:3, a:0, m:(0, 1)
d:4, a:0, m:(0, 1)
d:5, a:0, m:(0, 1)
d:6, a:0, m:(0, 1)
d:7, a:0, m:(0, 1)
d:8, a:0, m:(0, 1)
d:9, a:0, m:(0, 1)
d:10, a:0, m:(0, 1)
d:11, a:0, m:(0, 1)
d:12, a:0, m:(0, 1)
d:13, a:0, m:(0, 1)
d:14, a:0, m:(0, 1)
d:15, a:0, m:(0, 1)
d:16, a:0, m:(0, 1)
d:17, a:0, m:(0, 1)
d:18, a:0, m:(0, 1)
d:19, a:0, m:(0, 1)

r: 0
d: 19
m: (0, 1)

Meaning that the first player cannot always win, the wins will be in 19 moves, and the first player's move should be **(0, 1)**.
