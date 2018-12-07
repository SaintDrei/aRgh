## Install packages
install.packages("tuber")
install.packages("googleAuthR")
install.packages("httpuv")
## Initiate Libraries
library(tuber)
library("googleAuthR")

## googleAuthRget
options(googleAuthR.client_id = "802025607717-rme8q9i9irqq5c6qs7r15tropkbi9l3b.apps.googleusercontent.com")
options(googleAuthR.client_secret = "kFfdXw2ZHqg2DIFR3JJ6-Njr")
options(googleAuthR.scopes.selected = "https://www.googleapis.com/auth/youtube.force-ssl")
gar_auth()
library(googleCloudStorageR)
gcs_auth()
googleAuthR::gar_auth()

##Instantiate variables
## OAuth Client IDs must be generated for each machine that will access the API
app_id <- "802025607717-rme8q9i9irqq5c6qs7r15tropkbi9l3b.apps.googleusercontent.com"
app_secret <- "kFfdXw2ZHqg2DIFR3JJ6-Njr"
refresh_token <- "1/zjFw_8OSXyWs-CV-I6uBW0tO4CJSoXbwCH1X8Q6XGSI"
yt_oauth(app_id, app_secret, token="..httr-oauth")
channelid <- "UCSJ4gkVC6NrvII8umztf0Ow"


## List Channel Videos
channelid <- "UCSJ4gkVC6NrvII8umztf0Ow"
## Tapos kukunin ko list_channel_videos 
channel_videos <- list_channel_videos(channel_id = channelid,max_results = 100)
vid_list <- channel_videos$contentDetails.videoId
head(vid_list)

write.csv(vid_list, file="video_list") ## Write to CSV

## Get Video Details
deets <- get_video_details("cfHzr4eIXBg")
print(get_video_details(video_id = "cfHzr4eIXBg"))
## Translate deets to first_row_data, append to 


## Get Comment Threads
res <- get_all_comments(video_id = "cfHzr4eIXBg", max_results = 30)
vid_id = "cfHzr4eIXBg"
head(res)
get_comment_threads(filter = NULL, part = "snippet", text_format = "text",
                    simplify = TRUE, max_results = 100, page_token = NULL)
##write to video_id.csv
write.csv(res, file= paste(vid_id, ".csv") )

test <- c(head={'shit, shark, dog'}, tail={'poop, fin, tail'}, category={'thing, aqueous, landcrawler'})
print(test)
fart <- c(head='stuff', tail='poo', category='anus')
write.csv(fart, file='test.csv')
## Create Dataframe and CSV
output <- c(video_id = vid_id, video_url=vidurl, video_title=vidtitle, 
            channel=channel, series=series, video_snippet=vidsnippet,
            video=vidb, comment=commb, reply=replyb, video_op=vidop, 
            comment_op=commentop, reply_op=replyop, date_posted=converteddate,
            content=content, date_scrape=datescrape)
write.csv(output, paste(vid_id, ".csv"))


## https://www.youtube.com/watch?v=cfHzr4eIXBg LET ME EXPLAIN
## https://www.youtube.com/watch?v=xzXemfeXkZw Lanterns Kalaidoscope
## https://www.youtube.com/channel/UCSJ4gkVC6NrvII8umztf0Ow/videos Chilled Cow