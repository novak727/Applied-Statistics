### 3.1

#1. Students Grades

### Use Alt+Dash/Underscore for assigning
Grades <- c("D", "C", "E", "B", "B", "B", "A", "D", "B", "C", "B", "E", "C",
            "B", "C", "B", "B", "D", "B", "C")

table(Grades) # Frequency distribution table
cbind(table(Grades)) # Vertical table instead of horizontal

length(Grades) # Sum of all frequencies

table(Grades)/length(Grades) # Relative frequency distribution


#2 Mount Pleasant Real Estate Data Set

MPD <- read.csv("Mount_Pleasant_Real_Estate_Data.csv") # Read in CSV file in current working directory
View(MPD) # View dataset in RStudio

#2c. Construct frequency distribution
MPD <- na.omit(MPD) # eliminate any N/A rows from datasets

cbind(table(MPD$House.Style)) # Dollar sign focuses on specifically named variable
