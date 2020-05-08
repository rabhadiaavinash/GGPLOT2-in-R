
library(ggplot2)


titanic <- read.csv("titanicdata.csv", stringsAsFactors = F)
 
str(titanic)


ggplot(titanic , aes(x = Survived) )+ geom_bar()

ggplot(titanic , aes(x = factor(Survived)) )+ geom_bar()


ggplot(titanic , aes(x = SibSp) )+ geom_bar()

ggplot(titanic , aes(x = factor(SibSp) ))+ geom_bar()


# convert into Factor var

titanic$Survived <- as.factor(titanic$Survived)
titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic$Embarked)



ggplot(titanic , aes(x = Survived) )+ geom_bar()


table(titanic$Survived)


# for the percentages
prop.table(table(titanic$Survived))



ggplot(titanic , aes(x = Survived) )+ 
  geom_bar() +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") 


View(titanic)

ggplot(titanic , aes(x = Sex , fill = Survived) )+ 
  geom_bar() +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") 


ggplot(titanic , aes(x = Sex ) )+ 
  geom_bar() +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") 

str(titanic)
 

ggplot(titanic , aes(x = Pclass , fill = Survived) )+ 
  geom_bar() +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") 


# Using facet_wrap
ggplot(titanic , aes(x = Sex , fill = Survived) )+ 
  geom_bar() +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") +
  facet_wrap(~ Pclass)

#OR

# USing facet_grid
ggplot(titanic , aes(x = Sex , fill = Survived) )+ 
  geom_bar() +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") +
  facet_grid(.~Pclass)

ggplot(titanic , aes(x = Sex , fill = Survived) )+ 
  geom_bar() +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") +
  facet_grid(Pclass~.)


# Histogram

ggplot(titanic , aes(x = Age) )+ 
  geom_histogram(binwidth = 5) +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") +
  labs(x = "Age")

ggplot(titanic , aes(x = Age, fill = Survived) )+ 
  geom_histogram(binwidth = 5) +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") +
  labs(x = "Age") +
  facet_wrap(~Survived)
   

ggplot(titanic , aes(x = Age, fill = Survived) )+ 
  geom_histogram(binwidth = 5) +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Passenger Count") +
  labs(x = "Age") +
  facet_grid(.~Survived)


# Boxplot

ggplot(titanic , aes(x = Survived, y = Age) )+ 
  geom_boxplot() +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(y = "Age") +
  labs(x = "Survived")


# Density plot

ggplot(titanic , aes( x = Age ,fill = Survived) )+ 
  geom_density(alpha = 0.5) +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(x = "Age") +
  labs(y = "Survived") + 
  facet_wrap(Sex~Pclass)

ggplot(titanic , aes( x = Age ,fill = Survived) )+ 
  geom_density(alpha = 0.5) +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(x = "Age") +
  labs(y = "Survived") + 
  facet_wrap(~Pclass)

ggplot(titanic , aes( x = Age ,fill = Survived) )+ 
  geom_density(alpha = 0.5) +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(x = "Age") +
  labs(y = "Survived") + 
  facet_wrap(~Sex)

# with histogram

ggplot(titanic , aes( x = Age ,fill = Survived) )+ 
  geom_histogram(binwidth = 5) +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(x = "Age") +
  labs(y = "Survived") + 
  facet_wrap(Sex~Pclass)

# same plot as facet_wrap(Sex~Pclass)
ggplot(titanic , aes( x = Age ,fill = Survived) )+ 
  geom_density(alpha = 0.5) +
  theme_bw() +
  labs(title = "Titanic ") +
  labs(x = "Age") +
  labs(y = "Survived") + 
  facet_wrap(Pclass~Sex)






