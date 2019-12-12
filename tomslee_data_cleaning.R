# tomslee_data
t_5_11 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0210_2015-11-21.csv")
t_5_11$date <- c(201511)
t_5_11$Date <- as.Date("2015-11-1")
t_5_12 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0235_2015-12-14.csv")
t_5_12$date <- c(201512)
t_5_12$Date <- as.Date("2015-12-1")
t_6_1 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0282_2016-01-16.csv")
t_6_1$date <- c(201601)
t_6_1$Date <- as.Date("2016-1-16")
t_6_2 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0314_2016-02-16.csv")
t_6_2$date <- c(201602)
t_6_2$Date <- as.Date("2016-2-16")
t_6_3 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0344_2016-03-18.csv")
t_6_3$date <- c(201603)
t_6_3$Date <- as.Date("2016-3-18")
t_6_4 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0386_2016-04-14.csv")
t_6_4$date <- c(201604)
t_6_4$Date <- as.Date("2016-4-14")
t_6_5 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0420_2016-05-18.csv")
t_6_5$date <- c(201605)
t_6_5$Date <- as.Date("2016-5-18")
t_6_6 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0461_2016-06-18.csv")
t_6_6$date <- c(201606)
t_6_6$Date <- as.Date("2016-6-18")
t_6_7 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0489_2016-07-16.csv")
t_6_7$date <- c(201607)
t_6_7$Date <- as.Date("2016-7-16")
t_6_8 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0524_2016-08-19.csv")
t_6_8$date <- c(201608)
t_6_8$Date <- as.Date("2016-8-19")
t_6_9 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0566_2016-09-16.csv")
t_6_9$date <- c(201609)
t_6_9$Date <- as.Date("2016-9-16")
t_6_10 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0610_2016-10-18.csv")
t_6_10$date <- c(201610)
t_6_10$Date <- as.Date("2016-10-18")
t_6_11 <- read_csv("Tomslee_boston/tomslee_airbnb_boston_0649_2016-11-21.csv")
t_6_11$date <- c(201611)
t_6_11$Date <- as.Date("2016-11-21")

# combine data tomslee from 11 to 10.
data_tom <- rbind(t_5_11, t_5_12, t_6_1, t_6_2, t_6_3, t_6_4, t_6_5, t_6_6, t_6_7, t_6_8, t_6_9, t_6_10)

################################################
save(data_tom, file = "tomslee_data_Max.RData")
write.csv(data_tom, file = "tomslee_data_Max.csv")
################################################
################################################
data_tom <- read.csv("tomslee_data_Max.csv")
load("tomslee_data_Max.RData")
################################################




