  win <- 0
  lose <- 0
  tie <- 0
  play <- "Y"
  move_set <- c('Rock','Scissors','Paper')
  print("Let's play Rock, Scissors and Paper game")
  while(play=="Y"){
    print("Please choose your move")
    player_move <- trimws(readLines("stdin",n=1))
    cpu_move <- sample(move_set,1)
    print(paste("Computer Move",cpu_move))
    if(player_move==cpu_move){
      tie <- tie + 1
      print("It's tie")
    }
    else if(player_move=="Rock" & cpu_move =="Scissors"){
      win<- win + 1
      print("You win")
    }
    else if(player_move=="Scissors" & cpu_move =="Paper"){
      win<- win + 1
      print("You win")
    }
    else if(player_move=="Paper" & cpu_move =="Rock"){
      win<- win + 1
      print("You win")
    }
    else{
      lose <- lose + 1
      print("You lose")
    }
    print("Do you want to continue (Y/N)?")
    play <- readLines("stdin", n=1)
  }
  print("Summary of game result")
  print(paste("Win: ",win))
  print(paste("Tie: ",tie))
  print(paste("Lose: ",lose))
  print("Stop this game")
