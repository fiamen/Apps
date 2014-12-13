Lotto Numbers Picking App
========================================================
author: Mario Fiamenghi
date: 10 December 2014
What numbers to pick to play a lotto game 
========================================================

This app was developed to be used with the Golden Casket Australia lotto.It selects **random** generated number to play the games


- It is sometimes difficult to select random numbers to play a lotto game
- People generaly select number based on calendar days, not very random
- When need to play a large number of games it is even harder to select without repetition

R can make this task easier. See bellow code to generate 12 games with 6 random generated numbers
========================================================


```r
games<-replicate(5,sample(1:40,6))
games
```

```
     [,1] [,2] [,3] [,4] [,5]
[1,]    8   10   14   12   21
[2,]   17   16   34   24   15
[3,]    4   11    5   11   35
[4,]    3   35    6   10   27
[5,]   19   15   39   26    4
[6,]   36   25    8    7    5
```

Advantages
========================================================

- Quick to generate unlimited number of games
- Flexiability to choose between two Australian Lotto Games 
- Save the numbers for records keeping 
- Use online or in smart phones


Future functionality
========================================================

- Algorithm  using historical winning numbers
- Final results checking and premium calculation
- Numbers and dates database storage
