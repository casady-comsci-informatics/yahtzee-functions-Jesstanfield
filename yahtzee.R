roll <- function(die = 1:6, size = 2, replace = T){
  sample(die, size, replace)
}

yahtzeeRoll <- function(die = 1:6){
  replicate(5, roll(die, 1))
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