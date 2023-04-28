# Create variables for the our dataframe
Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)

First <- c(1,1,1,1,0,0,0,0,NA,1)

second <- c(0,0,1,1,0,0,1,1,1,1)

FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

# Create a datarrame of variables
df <- data.frame(Frequency, BP, First,second,FinalDecision)

df

#Create boxplot
boxplot(df)
# loop through all columns in the dataframe and plot a histogram for each column
for (col in names(df)) {
  hist(df[[col]], main = paste("Histogram of", col))
}


#Calculate mean of the final decsion variable
mean(df$FinalDecision)
#The mean of the BP variable seems to be around 100 to 156, with a frequency of three

