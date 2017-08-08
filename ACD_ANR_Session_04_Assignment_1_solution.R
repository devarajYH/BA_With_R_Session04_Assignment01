############################################################################

# Qn.1 Create the vectors.

# (a) (2, 3, . . , 29, 30)
# Ans..
      vec_a <- c(2:30)
      vec_a

# (b) (30, 29, . , 2)
# Ans..
      vec_b <- c(30:2)
      vec_b


# (c) (1, 2, 3, .. , 29, 30, 29, 28, , 2, 1)
# Ans..
      vec_c <- c(1:30,29:1)
      vec_c

# (d) (4, 6, 3) and assign it to the name dev.
      
      dev <- c(4,6,3)
      dev

# (e) (5, 6, 7, 5, 6, 7, , 5, 6, 7) where there are 10 occurrences of 5.
# Ans..
      e <- c(rep(5:7,3),rep(5,7))               # rep function to get occurrences of specific value(here it is 5)
      vec_e <- sample(e,length(e),replace = F)  # taking sample to get values in random position
      vec_e
      
# (f) (5, 6, 7, 5, 6, 7, , 5, 6, 7, 5) where there are 11 occurrences of 5, 
#     10 occurrences of 6 and 10 occurrences of 7.
# Ans..
      f <- c(rep(5,11),rep(6,10),rep(7,10))     # rep function to get occurrences
      vec_f <- sample(f,length(f),replace = F)  # taking sample to get values in random position
      vec_f
      
  
# (g) (4, 4, , 4, 6, 6, , 6, 3, 3, , 3) where there are 10 occurrences of 4, 
#     20 occurrences of 6 and 30 occurrences of 3.
# Ans..
      g <- c(rep(4,10),rep(6,20),rep(3,30))     # rep function to get occurrences
      vec_g <- sample(g,length(g),replace = F)  # taking sample to get values in random position
      vec_g
      

##########################################################################

# Qn.2 Create a vector of the values of eX sin(x) at x = 3, 3.1, 3.2, , 6.

x2 = c(3, 3.1, 3.2, 6)         # creating the vector with given values

sin_vec <- c(exp(x2)*sin(x2))  # calculation of eX sin(x)

sin_vec


#################################################################

# Qn.3 Execute the following lines which create two vectors of random integers 
# which are chosen with replacement from the integers 0, 1, : : : , 999.
# Both vectors have length 250.

set.seed(100)
x <- sample(0:999, 250, replace=F)
y <- sample(0:999, 250, replace=F)

# (a) Identify out the values in y which are > 500.
#  Ans..
      y[y>500] 

      
# (b) Identify the index positions in y of the values which are > 700?
#  Ans..
        y[y>700]                        # values in y which are > 700
        
        index_pos <- match(y[y>700],y)  # match function to get index position
        
        index_pos                       # Required index positions in y
      
    
# (c) What are the values in x which are in Same index position to the values in y which are > 400?
# Ans..
        y[y>400]                        # values in y which are > 400
        
        match(y[y>400],y)               # index positions of value > 400
        
        x[(match(y[y>400],y))]          # required values in x

      
# (d) How many values in y are within 200 of the maximum value of the terms in y?     
# Ans..     
      
      length(y[y<200])
      
   
# (e) How many numbers in x are divisible by 2?
# Ans..
      
      sum(x%%2==0,na.rm = T)     # these many numbers in x are divisible by 2  
      

# (f) Sort the numbers in the vector x in the order of increasing values in y.
# Ans..
      order(y,decreasing = F)       # order of increasing values in y
      x[order(y,decreasing = F)]    # sorting the x
     
      
################################################################
      
# Qn.4 Use the function paste to create the following character vectors of length 30:

      
# (a) ("Label 1", "Label 2", ....., "Label 30").

      # Ans.1 By using paste & concatenate function
      # (Assigning the values manually from Lable 1 to Lable 30)
      
      char_vector1 <- paste(c("Lable 1","Lable 2","Lable 3","Lable 4","Lable 5","Lable 6","Lable 7","Lable 8","Lable 9","Lable 10",
                              "Lable 11","Lable 12","Lable 13","Lable 14","Lable 15","Lable 16","Lable 17","Lable 18","Lable 19","Lable 20",
                              "Lable 21","Lable 22","Lable 23","Lable 24","Lable 25","Lable 26","Lable 27","Lable 28","Lable 29","Lable 30"))
      char_vector1
      length(char_vector1)
 
           
      # Ans.2 By using paste & sprintf function
      
      char_vector2 <- paste(sprintf("Lable %d",1:30))
     
      char_vector2            # Required vector
      length(char_vector2)  

      
# (b) (b) ("FN1", "FN2", ..., "FN30")  
      
      # Ans.1 By using paste & concatenate function
      # (Assigning the values manually from FN1 to FN30)
      
      fn_vector1 <- paste(c("FN1","FN2","FN3","FN4","FN5","FN6","FN7","FN8","FN9","FN10",
                            "FN11","FN12","FN13","FN14","FN15","FN16","FN17","FN18","FN19","FN20",
                            "FN21","FN22","FN23","FN24","FN25","FN26","FN27","FN28","FN29","FN30" ))
      fn_vector1
      length(fn_vector1)
      
      
      # Ans.2 By using paste & sprintf function
      
      fn_vector2 <- paste(sprintf("FN%d",1:30))
      
      fn_vector2
      length(fn_vector2)
      
      
###################################################################

# Qn.5 Write R code to calculate the amount of money owed after n years, where n changes from 1 to 15 in
# yearly increments, if the money lent originally is 10000 Rupees and the interest rate remains constant
# throughout the period at 11.5%.

# Ans..
      
      # we know that the Amount formula for compound interest is 
      # A = p * (1+(r/100))^n  (This is the case when interest compounding once in a year)
      
        Amount_owed <- 10000*(1+(11.5/100))^15
      
      # So, the Amount of money owed after 15 yaers is
        Amount_owed

####################################################################
        
# Qn.6 Generate the following matrices.
      #  [,1] [,2] [,3] [,4]
      #  [1,] 1 101 201 301
      #  [2,] 2 102 202 302
      #  [3,] 3 103 203 303
      #  [4,] 4 104 204 304
      #  [5,] 5 105 205 305
        
# Ans..
        # Creating a vector k with above given values
        
        k <- c(1:5,101:105,201:205,301:305)
        
        # creating a matrix matrix1 with values of vector k
        
        matrix1 <- matrix(k,nrow = 5)
        
        # So, the required matrices is..
        matrix1
#########################################################