from easyAI import TwoPlayerGame, Human_Player, AI_Player, Negamax, SSS
from easyAI import solve_with_iterative_deepening

from colorama import Fore, Back, Style


class GameOfDots(TwoPlayerGame):
    def __init__(self, players=None, sizeOfBoard = 3):
        self.SIZE = sizeOfBoard
        self.TOTAL = (self.SIZE*self.SIZE) - 1
        self.LAST_LINE = (self.TOTAL+1)-self.SIZE
        self.LAST_COLUMN = self.SIZE-1
        
        self.players = players
        self.board = self.create_board()
        self.current_player = 1 # player 1 starts

        self.player_1_moves = [[] for i in range(self.TOTAL+1)]
        self.player_2_moves = [[] for i in range(self.TOTAL+1)]


    def create_board(self):
        return [(i, i+1) for i in range(self.TOTAL) if i % self.SIZE != self.LAST_COLUMN] + \
        [(i, i+self.SIZE) for i in range(self.LAST_LINE)] 

    def possible_moves(self):
        return self.board #possible moves are stored in self.board

    def make_move(self, move):
        self.board.remove(move)
        x, y = move
        if self.current_player == 1:
            self.player_1_moves[x].append(y)
        else:
            self.player_2_moves[x].append(y)

    def win(self): return self.scoring() > 0 # opponent took the last bone ?

    def is_over(self): return not bool(self.board) # Game stops when board is empty, i.e. there is no other possible moves

    def show(self): 
        for i in range(self.SIZE):
            for j in range(self.SIZE):
                print(Fore.RESET + '.', end='')
                number = (i*self.SIZE)+j
                if (number+1 in self.player_1_moves[number]):
                    print(Fore.BLUE + '-', end='')
                elif (number+1 in self.player_2_moves[number]):
                    print(Fore.RED + '-', end='')
                else:
                    print(' ', end='')
            
            print()
            for j in range(self.SIZE):
                number = (i*self.SIZE)+j
                if (number+self.SIZE in self.player_1_moves[number]):
                    print(Fore.BLUE + '|', end='')
                elif (number+self.SIZE in self.player_2_moves[number]):
                    print(Fore.RED + '|', end='')
                else:
                    print(' ', end='')
                print(' ', end='')
            print()

            
    def scoring(self): 
        score = 0
        for i in range(len(self.player_1_moves)):
            moves = self.player_1_moves[i]
            if ((i+1) in moves) and ((i+self.SIZE) in moves):
                if (i+self.SIZE+1) in self.player_1_moves[i+1]:
                    if (i+self.SIZE+1) in self.player_1_moves[i+self.SIZE]:
                        score += 1

        for i in range(len(self.player_2_moves)):
            moves = self.player_2_moves[i]
            if ((i+1) in moves) and ((i+self.SIZE) in moves):
                if (i+self.SIZE+1) in self.player_2_moves[i+1]:
                    if (i+self.SIZE+1) in self.player_2_moves[i+self.SIZE]:
                        score -= 1

        if score > 0:
            return 100
        else:
            return 0

    def lose(self):
        return self.scoring() <= 0
    

if __name__ == "__main__":
    print("Hello! Welcome to the gem of dots!")

    execute = True
    while execute:
        print()
        print("Please select an option: ")
        print("1 - Play with IA")
        print("2 - Observe 2 IAs play with each other")
        print("3 - Solve with iterative deepening (i.e. combine breadth-first search with depth-first search)")
        print("To see further meaning of iterative deepening, please access its documentation, in this directory's README")
        print("Other - Exit")
        option = int(input())
        print()

        if option > 3 or option <= 0:
            execute = False
            break

        size = int(input("Please type the size of board you wish. We recommend 3: "))

        ai1 = Negamax(5) # The AI will think 5 moves in advance
        ai2 = Negamax(1)
        
        if option == 3:
            r,d,m = solve_with_iterative_deepening(
                game=GameOfDots(size),
                ai_depths=range(2,20),
                win_score=100
            )

            print("r: ", end='')
            print(r)
            print("d: ", end='')
            print(d)
            print("m: ", end='')
            print(m)
                        
        else:
            if option == 1:
                game = GameOfDots( [ AI_Player(ai1), Human_Player() ] , sizeOfBoard=3)

            elif option == 2:
                game = GameOfDots( [ AI_Player(ai1), AI_Player(ai2) ] , sizeOfBoard=3)

            game.play()
            if game.lose():
                print("Player %d wins." % (game.current_player))
            else:
                print("Looks like we have a draw.")
