college <- read.csv('College.csv', sep = ',')
head(college)

rownames(college) = college[ ,1]
head(college)

college=college[, -1]
head(college)

summary(college)

pairs(college[,2:11])

str(college)

college$Private <- as.factor(college$Private)

plot(college$Private, college$Outstate,
     xlab = "Outstate",
     ylab = "Private (Yes/No)",
     horizontal = TRUE)

Elite = rep('No', nrow(college))
Elite[college$Top10perc > 50] = 'Yes'
Elite = as.factor(Elite)
college = data.frame(college, Elite)

summary(college)

plot(college$Elite, college$Outstate,
     xlab = "Outstate",
     ylab = "Elite (Yes/No)",
     horizontal = TRUE)

par(mfrow = c(2, 2))

hist(college$Outstate,
     main = "Histogram of Outstate Tuition",
     xlab = "Outstate Tuition (USD)",
     col = "lightblue",
     breaks = 10)

hist(college$Apps,
     main = "Histogram of Applications",
     xlab = "Number of Applications",
     col = "lightgreen",
     breaks = 20)

hist(college$Room.Board,
     main = "Histogram of Room & Board Costs",
     xlab = "Room & Board (USD)",
     col = "lightcoral",
     breaks = 15)

hist(college$Grad.Rate,
     main = "Histogram of Graduation Rate",
     xlab = "Graduation Rate (%)",
     col = "lightgoldenrod",
     breaks = 5)
