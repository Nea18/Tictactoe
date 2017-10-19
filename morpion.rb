class BoardCase
  attr_accessor :value, :tile_number
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)

  def initialize(tile_number)
    @value = " "
    @tile_number = tile_number
    #TO DO doit régler sa valeur, ainsi que son numéro de case
  end

  def to_s()
    @value.to_s
    #TO DO : doit renvoyer la valeur au format string
  end

end

class Board
  include Enumerable
  attr_accessor :tiles, :BoardCase
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  def initialize
    tile1 = BoardCase.new(0)
    tile2 = BoardCase.new(1)
    tile3 = BoardCase.new(2)
    tile4 = BoardCase.new(3)
    tile5 = BoardCase.new(4)
    tile6 = BoardCase.new(5)
    tile7 = BoardCase.new(6)
    tile8 = BoardCase.new(7)
    tile9 = BoardCase.new(8)

    @tiles = [tile1, tile2, tile3, tile4, tile5, tile6, tile7, tile8, tile9]
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  end

  def to_s()
    puts "| #{@tiles[0].value} | #{tiles[1].value} | #{tiles[2].value} |"
    puts "+-1-+-2-+-3-+"
    puts "| #{tiles[3].value} | #{tiles[4].value} | #{tiles[5].value} |"
    puts "+-4-+-5-+-6-+"
    puts "| #{tiles[6].value} | #{tiles[7].value} | #{tiles[8].value} |"
    puts "+-7-+-8-+-9-+"
  #TO DO : afficher le plateau
  end

  def play(player, location)
    @tiles[location] = player.pawn
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?()
    @win_array = [[0,1,2]], [0,4,8], [0,3,6], [1,4,7], [2,5,8], [2,4,6], [3,4,5], [6,7,8]]
    #TO DO : qui gagne ?
  end

class Player
    attr_accessor :name, :pawn
    attr_writer :win
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?


  def initialize(name, pawn, win)
    @name = name
    @pawn = pawn
    @win = win
    #TO DO : doit régler son nom, sa valeur, son état de victoire
  end

class Game
    attr_accessor :player, :board, :board_case

  def initialize()
    puts 'Please enter a name for player 1:'
    @p1 = Player.new(gets.chomp, 'X', [])
    puts 'Please enter a name for player 2:'
    @p2 = Player.new(gets.chomp, '0', [])
    @board = Board.new
    turn
    #TO DO : créé 2 joueurs, créé un board
  end

  def go()
    @move_number = 1
    @win = false
    # TO DO : lance la partie
  end

  def turn()
    @move_number = 2

    puts "#{@p1.name} vous jouez les 'X'"
    puts "#{@p2.name} vous jouez les 'O'"

    if @move_number % 2 == 0
      puts "#{@p1.name} à vous de jouer"
    else
      puts "#{@p2.name} à vous de jouer"
    end

    print @board.to_s

    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end

Game.new.go
