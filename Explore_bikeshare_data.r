
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

head(ny)

head(wash)

head(chi)

ny <-subset(read.csv('new_york_city.csv'), User.Type=="Customer" | User.Type=="Subscriber")
#wash <-subset(read.csv('washington.csv'), User.Type=="Customer" | User.Type=="Subscriber")
chi <-subset(read.csv('chicago.csv'), User.Type=="Customer" | User.Type=="Subscriber")

library(ggplot2)
ggplot(aes(x=User.Type,fill= Gender), data=chi) + geom_bar()+xlab("Type of user")+ylab("Count in Chicago")
ggplot(aes(x=User.Type,fill= Gender), data=subset(ny)) + geom_bar()+xlab("Type of user")+ylab("Count in New York")
#ggplot(aes(x=User.Type,fill= Gender), data=wash) + geom_bar()+xlab("Type of user")+ylab("Count in Washington")
summary(chi$User.Type)
summary(ny$User.Type)
#summary(wash$User.Type)


# Your solution code goes here

# Your solution code goes here

system('python -m nbconvert Explore_bikeshare_data.ipynb')
