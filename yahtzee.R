roll <- function(die = 1:6, size = 2, replace = T){
  sample(die, size, replace)
}

yahtzeeRoll <- function(){
  replicate(5, roll(1:6, 1))
}

sumRoll <- function(roll, value){
  for (i in 1:5) {
    if (roll[i] != value) {
      return(FALSE)
    }
  }
  return(TRUE)
}

isYahtzee <- function(roll){
  sumRoll(roll, roll[1])
}