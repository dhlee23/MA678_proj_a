#----------------------------------------------------------------------------------------------------------
# listings from Oct 2018 to Sep 2019
for(i in 1:12){
  file = paste("list_", i, sep = "")
  data = paste("/Users/daylelee/Desktop/MA678_proj_a/Airbnb_boston/listing/listings_", i, ".csv", sep = "")
  assign(file, read.csv(data, header = TRUE))
  next
}
#----------------------------------------------------------------------------------------------------------
# data as tibble
list10 <- as_tibble(list_10)
list11 <- as_tibble(list_11)
list12 <- as_tibble(list_12)
list1 <- as_tibble(list_1)
list2 <- as_tibble(list_2)
list3 <- as_tibble(list_3)
list4 <- as_tibble(list_4)
list5 <- as_tibble(list_5)
list6 <- as_tibble(list_6)
list7 <- as_tibble(list_7)
list8 <- as_tibble(list_8)
list9 <- as_tibble(list_9)
#----------------------------------------------------------------------------------------------------------
#"2019-05-24" should be filtered out
#"2019-07-15" should be filtered out
#"2019-10-11" should be filtered out
#"2018-11-26" should be filtered out
list5 %<>% dplyr::filter(last_scraped == "2019-05-19")
list7 %<>% dplyr::filter(last_scraped == "2019-07-14")
list9 %<>% dplyr::filter(last_scraped == "2019-09-22")
list11 %<>% dplyr::filter(last_scraped == "2018-11-17")
#----------------------------------------------------------------------------------------------------------
list10$date <- c(201810)
list10$Date <- as.Date("2018-10-11")
list11$date <- c(201811)
list11$Date <- as.Date("2018-11-17")
list12$date <- c(201812)
list12$Date <- as.Date("2018-12-13")
list1$date <- c(201901)
list1$Date <- as.Date("2019-01-17")
list2$date <- c(201902)
list2$Date <- as.Date("2019-02-09")
list3$date <- c(201903)
list3$Date <- as.Date("2019-03-12")
list4$date <- c(201904)
list4$Date <- as.Date("2019-04-15")
list5$date <- c(201905)
list5$Date <- as.Date("2019-05-19")
list6$date <- c(201906)
list6$Date <- as.Date("2019-06-14")
list7$date <- c(201907)
list7$Date <- as.Date("2019-07-14")
list8$date <- c(201908)
list8$Date <- as.Date("2019-08-19")
list9$date <- c(201909)
list9$Date <- as.Date("2019-09-22")
#----------------------------------------------------------------------------------------------------------
# select variables of interest 
# due to the diff in variables 
# 
list10 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list11 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list12 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list1 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list2 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list3 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list4 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list5 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list6 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list7 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list8 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
list9 %<>% 
  dplyr::select(
    id,date,Date,
    last_scraped,calendar_last_scraped,
    neighbourhood_cleansed,zipcode,latitude,longitude,
    host_id,host_name,host_response_time,
    host_is_superhost,host_listings_count,host_total_listings_count,
    host_verifications,host_has_profile_pic,host_identity_verified,
    calculated_host_listings_count,
    property_type, room_type, accommodates, bedrooms, bathrooms, beds,
    price, cleaning_fee, 
    weekly_price, monthly_price, security_deposit,
    guests_included, extra_people, minimum_nights, maximum_nights,
    instant_bookable, cancellation_policy, 
    require_guest_profile_picture, require_guest_phone_verification,
    number_of_reviews, reviews_per_month,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
  )
#----------------------------------------------------------------------------------------------------------
data_inside <- rbind(list10, list11, list12, list1, list2, list3, list4, list5, list6, list7, list8, list9)
#----------------------------------------------------------------------------------------------------------
# to numeric value
data_inside %<>% 
  mutate(price = as.numeric(gsub("\\$|,", "", price))) %>%
  mutate(weekly_price = as.numeric(gsub("\\$|,", "", weekly_price))) %>%
  mutate(monthly_price = as.numeric(gsub("\\$|,", "", monthly_price))) %>%
  mutate(security_deposit = as.numeric(gsub("\\$|,", "", security_deposit))) %>%
  mutate(cleaning_fee = as.numeric(gsub("\\$|,", "", cleaning_fee))) %>%
  mutate(extra_people = as.numeric(gsub("\\$|,", "", extra_people)))

data_inside$last_scraped <- as.Date(list1$last_scraped, format = "%Y-%m-%d")
#----------------------------------------------------------------------------------------------------------
# factor to character
dat <- data_inside
dat$neighbourhood_cleansed <- as.character(dat$neighbourhood_cleansed)
dat$host_response_time <- as.character(dat$host_response_time)
dat$host_is_superhost <- as.character(dat$host_is_superhost)
dat$host_verifications <- as.character(dat$host_verifications)
dat$host_has_profile_pic <- as.character(dat$host_has_profile_pic)
dat$host_identity_verified <- as.character(dat$host_identity_verified)
dat$property_type <- as.character(dat$property_type)
dat$room_type <- as.character(dat$room_type)
dat$calendar_last_scraped <- as.character(dat$calendar_last_scraped)
dat$instant_bookable <- as.character(dat$instant_bookable)
dat$cancellation_policy <- as.character(dat$cancellation_policy)
dat$require_guest_profile_picture <- as.character(dat$require_guest_profile_picture)
dat$require_guest_phone_verification <- as.character(dat$require_guest_phone_verification)
## Data wrangling & cleaning---------------------------
dat <- dat %>% filter(room_type != "Hotel room")
dat <- dat %>% mutate(require_guest_profile_picture = ifelse(require_guest_profile_picture == "t", 1,0))
dat <- dat %>% mutate(require_guest_phone_verification = ifelse(require_guest_phone_verification == "t", 1,0))
dat <- dat %>% mutate(instant_bookable = ifelse(instant_bookable == "t", 1,0))
## data_inside-----------------------------------------
data_inside <- dat
#----------------------------------------------------------------------------------------------------------
################################################
save(data_inside, file = "airbnb_data_inside.RData")
write.csv(data_inside, file = "airbnb_data_inside.csv")
################################################
################################################
data_inside <- read.csv("airbnb_data_inside.csv")
load("airbnb_data_inside.RData")
################################################