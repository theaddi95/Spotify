library(jsonlite)


Playlists <- fromJSON("MyData/Playlist1.json", flatten = TRUE)

names(Playlists$playlists$items[[1]])
Playlists$playlists$name



History1 <- fromJSON("MyData/StreamingHistory0.json", flatten = TRUE)
History2 <- fromJSON("MyData/StreamingHistory1.json", flatten = TRUE)

totalHistory <- rbind(History1, History2)

colnames(totalHistory)

totalHistory$endTime

totalHistory["ConvDate"] <- as.Date(totalHistory$endTime, "%Y-%m-%d %H:%M")

head(totalHistory)
write.csv(totalHistory, "MyData/TotalHistory.csv")
