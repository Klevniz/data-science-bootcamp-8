## Steps to do
## 1 Select how many topping that you want to order i.e. 2
## 2 Select your pizza topping i.e. Tom Yum Koong Pizza
## 3 Select number of slices i.e 2
  print("Hi, What do you want to order today?")
  pizza_topping <- c('Truffle Pizza', 'Hawaiian Pizza', 'Tom Yum Koong Pizza', 'Sausage Pizza', 'Margherita Pizza')
  pizza_price <- c(10,7,8,6,5)
  pizza_menu <- data.frame(pizza_topping,pizza_price)
  print("We have following topping and price for each slice ")
  print(pizza_menu)
  print("How many topping that you want to order?")
  number_of_topping <- trimws(readLines("stdin",n=1))
  count <- 0
  number_of_topping <- as.numeric(number_of_topping)
  selected_topping <- c()
  slice<- c()
  price<- c()
  while(count < number_of_topping){
    count <- count+1
    print(paste0("Please select topping #",count," "))
    topping <- trimws(readLines("stdin",n=1))
    selected_topping <- c(selected_topping,topping)
    print(paste("How many slices of",topping,"? "))      
    num_slice <- trimws(readLines("stdin",n=1))
    slice <- c(slice,num_slice)
    price <- c(price,as.numeric(pizza_menu[pizza_menu$pizza_topping == topping,2])*as.numeric(num_slice))   
  }
  print("Summary of your order")
  summary <- data.frame(selected_topping,slice,price)
  print(summary)
  total_price <- sum(price)
  print(paste("Total Price: $",total_price))

