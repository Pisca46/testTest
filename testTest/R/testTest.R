testEnvir <- new.env()
testEnvir$menu <- "spam"

setMenu <- function (menu) { testEnvir$menu <- menu }

printMenu <- function (menu) { print (testEnvir$menu) }
