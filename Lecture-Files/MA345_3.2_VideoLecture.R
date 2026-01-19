### 3.2

Department <- c("Accounting", "HR", "IT", "Management", "Marketing",
                "Product Management", "Research and Development", "Sales",
                "Support", "Technical")

# Cannot use spaces in R for variables
High.Salary <- c(74,45,83,225,80,68,51,269,141,201)
Medium.Salary <- c(358,335,609,180,402,451,364,2099,1147,1372)
Low.Salary <- c(335,359,535,225,376,383,372,1772,942,1147)

EmpSD <- data.frame(Department, High.Salary, Medium.Salary, Low.Salary)
View(EmpSD)

#a. Bar chart employees w/ high salaries

# install ggplot2 with install.packages("ggplot2") if needed
library(ggplot2)

#stat="identity" counts each instance of an x and sums them all together for y
ggplot(data=EmpSD, aes(x=Department, y=High.Salary))+geom_bar(stat=
    "identity")+labs(x="Departments", y="Count", title=
    "High Salaries by department")

#b. Stacked bar chart for employees w/ low, medium, and high salaries by department

# replicate each object in Department 3 times
Dept <- rep(Department, each=3)

# times = number of unique departments
Sal <- factor(rep(c("High Salary", "Medium Salary", "Low Salary"), times=10),
    levels=c("High Salary", "Medium Salary", "Low Salary"))
Count <- c(74,358,335, 45,335,359, 83,609,535, 225,180,225, 80,402,376,
           68,451,383, 51,364,372, 269,2099,1772, 141,1147,942, 201,1372,1147)
NewDf <- data.frame(Dept, Sal, Count)
View(NewDf)

# scale_fill_manual distinguishes stacked bars (R will do this automatically if
# not specified)
ggplot(data=NewDf, aes(x=Dept, y=Count, fill=Sal))+geom_bar(stat="identity")+
    labs(x="Departments", y="Count", title="Stacked bar chart of salaries by
    department")+scale_fill_manual(values=c("red", "blue", "green"))

#c. Pie chart for employees w/ each type of salary

# Only interested in Salary and Count, summing all High Salaries together,
# Medium Salaries together, and Low Salaries together
NewAggD <- aggregate(NewDf$Count, by=list(NewDf$Sal), FUN=sum)
View(NewAggD)

# rename columns
colnames(NewAggD) <- c("Salary","Count")
View(NewAggD)

# Pie chart
pie(NewAggD$Count, labels = NewAggD$Salary)
