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
unlink(".httr-oauth") ##Delete .httr-oauth
yt_oauth(app_id, app_secret, token=".httr-oauth")
channelid <- "UCSJ4gkVC6NrvII8umztf0Ow"


## List Channel Videos
channelid <- "UCnQC_G5Xsjhp9fEJKuIcrSw"
## Tapos kukunin ko list_channel_videos 
channel_videos <- list_channel_videos(channel_id = channelid,max_results = 30)
vid_list <- channel_videos$contentDetails.videoId
head(vid_list)
playlists<-get_playlists(filter=c(channel_id=channelid), max_results = 50, simplify=TRUE)
head(playlists)
print(playlists$items[[1]][[4]][[3]])


plistcount <- playlists$pageInfo[[1]]
plist_id<- playlists$items[[1]][[3]]
plist_title <- playlists$items[[1]][[4]][[3]]

plist_videos <- get_playlist_items(filter = c(playlist_id=plist_id), 
                max_results = 50, simplify = TRUE)
plist_count <- nrow(plist_videos)
vid_list <- plist_videos$contentDetails.videoId

write.csv(vid_list, file=paste("Channel-Videos-", channelid, ".csv")) 
## Write to CSV



## Get Video Details


deets <- get_video_details("cfHzr4eIXBg")
print(get_video_details(video_id = "cfHzr4eIXBg"))
print(deets$items[[1]][[4]][[9]][[1]])
t <- deets$items[[1]][4]
print(t[[1]])

output <- c(video_id = "cfHzr4eIXBg", video_url=paste("https://www.youtube.com/watch?v=",), video_title=vidtitle, 
            channel=channel, series=series, video_snippet=vidsnippet,
            video=vidb, comment=commb, reply=replyb, video_op=vidop, 
            comment_op=commentop, reply_op=replyop, date_posted=converteddate,
            content=content, date_scrape=datescrape)
write.table()
fart <- c(head='other', tail='tart', category='toe')
write.table(fart, file='test.csv', append = T, sep = ',', col.names = F)
tester <- read.csv(file="test.csv")

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
fart <- c(head='other', tail='tart', category='toe')
write.table(fart, file='test.csv', append = T, sep = ',', col.names = F)
tester <- read.csv(file="test.csv")
print(tester)
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