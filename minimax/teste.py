from easyAI import TwoPlayerGame, Human_Player, AI_Player, Negamax
from colorama import Fore, Back, Style

SIZE = 5

if SIZE == 5:
    TOTAL = 25 - 1
    LAST_LINE = 20
    LAST_COLUMN = 4

elif SIZE == 10:
    TOTAL = 100 - 1
    LAST_LINE = 90
    LAST_COLUMN = 9


class GameOfDots( TwoPlayerGame ):
    def __init__(self, players=None):
        self.players = players
        self.board = self.create_board()
        self.current_player = 1 # player 1 starts

        self.player_1_moves = [[] for i in range(TOTAL)]
        self.player_2_moves = [[] for i in range(TOTAL)]

        print(self.player_1_moves)


    def create_board(self):
        return [(i, i+1) for i in range(TOTAL) if i % SIZE != LAST_COLUMN] + \
        [(i, i+SIZE) for i in range(LAST_LINE)] 

    def possible_moves(self): return self.board

    def make_move(self, move): 
        self.board.remove(move)
        x, y = move
        if self.current_player == 1:
            self.player_1_moves[x].append(y)
        else:
            self.player_2_moves[x].append(y)

    def win(self): (not bool(self.board)) and (self.scoring < 0) # opponent took the last bone ?

    def is_over(self): return self.win() # Game stops when someone wins.

    def show(self): 
        for i in range(SIZE):
            for j in range(SIZE):
                print(Fore.RESET + '.', end='')
                number = (i*SIZE)+j
                edge = (number, number+1)
                if (edge in self.player_1_moves):
                    print(Fore.RED + '-', end='')
                elif (edge in self.player_2_moves):
                    print(Fore.BLUE + '-', end='')
                else:
                    print(' ', end='')
            
            print()
            for j in range(SIZE):
                number = (i*SIZE)+j
                edge = (number, number+SIZE)
                if (edge in self.player_1_moves):
                    print(Fore.RED + '|', end='')
                elif (edge in self.player_2_moves):
                    print(Fore.BLUE, '|', end='')
                else:
                    print(' ', end='')
                print(' ', end='')
            print()

            
    def scoring(self): 
        score = 0
        for i in range(len(self.player_1_moves)):
            for j in range(len(self.player_1_moves[i])):

            move = self.player_1_moves[i]
            x, y = move
            if ((x, x+SIZE) in self.player_1_moves) and ((y, y+SIZE) in self.player_1_moves) and ((x+SIZE,y+SIZE) in self.player_1_moves):
                score -= 1

        for i in range(len(self.player_2_moves)):
            move = self.player_2_moves[i]
            x, y = move
            if ((x, x+SIZE) in self.player_2_moves) and ((y, y+SIZE) in self.player_2_moves) and ((x+SIZE,y+SIZE) in self.player_2_moves):
                score += 1

        return score

# Start a match (and store the history of moves when it ends)
ai = Negamax(1) # The AI will think 13 moves in advance
game = GameOfDots( [ Human_Player(), AI_Player(ai) ] )
history = game.play()